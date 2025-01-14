
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct inode {int i_ctime; TYPE_2__* i_sb; } ;
struct ext4_xattr_info {int name_index; char const* name; void const* value; size_t value_len; int in_inode; } ;
struct TYPE_14__ {struct buffer_head* bh; } ;
struct TYPE_12__ {scalar_t__ not_found; int base; } ;
struct ext4_xattr_ibody_find {TYPE_3__ iloc; TYPE_1__ s; } ;
struct ext4_xattr_block_find {struct buffer_head* bh; TYPE_1__ s; } ;
struct ext4_inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
struct TYPE_15__ {int s_inode_size; } ;
struct TYPE_13__ {int s_blocksize; } ;
struct TYPE_11__ {scalar_t__ i_file_acl; } ;


 int EEXIST ;
 int EINVAL ;
 int ENODATA ;
 int ENOSPC ;
 int ERANGE ;
 TYPE_10__* EXT4_I (struct inode*) ;
 TYPE_8__* EXT4_SB (TYPE_2__*) ;
 int EXT4_STATE_NEW ;
 scalar_t__ EXT4_XATTR_MIN_LARGE_EA_SIZE (int ) ;
 scalar_t__ EXT4_XATTR_SIZE (size_t) ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 scalar_t__ IS_SYNC (struct inode*) ;
 int PTR_ERR (struct buffer_head*) ;
 int XATTR_CREATE ;
 int XATTR_REPLACE ;
 int __ext4_xattr_set_credits (TYPE_2__*,struct inode*,struct buffer_head*,size_t,int) ;
 int brelse (struct buffer_head*) ;
 int current_time (struct inode*) ;
 int ext4_clear_inode_state (struct inode*,int ) ;
 int ext4_handle_has_enough_credits (int *,int) ;
 int ext4_handle_sync (int *) ;
 scalar_t__ ext4_handle_valid (int *) ;
 scalar_t__ ext4_has_feature_ea_inode (TYPE_2__*) ;
 int ext4_mark_iloc_dirty (int *,struct inode*,TYPE_3__*) ;
 struct ext4_inode* ext4_raw_inode (TYPE_3__*) ;
 int ext4_reserve_inode_write (int *,struct inode*,TYPE_3__*) ;
 scalar_t__ ext4_test_inode_state (struct inode*,int ) ;
 int ext4_write_lock_xattr (struct inode*,int*) ;
 int ext4_write_unlock_xattr (struct inode*,int*) ;
 int ext4_xattr_block_find (struct inode*,struct ext4_xattr_info*,struct ext4_xattr_block_find*) ;
 int ext4_xattr_block_set (int *,struct inode*,struct ext4_xattr_info*,struct ext4_xattr_block_find*) ;
 struct buffer_head* ext4_xattr_get_block (struct inode*) ;
 int ext4_xattr_ibody_find (struct inode*,struct ext4_xattr_info*,struct ext4_xattr_ibody_find*) ;
 int ext4_xattr_ibody_set (int *,struct inode*,struct ext4_xattr_info*,struct ext4_xattr_ibody_find*) ;
 int ext4_xattr_update_super_block (int *,TYPE_2__*) ;
 scalar_t__ ext4_xattr_value_same (TYPE_1__*,struct ext4_xattr_info*) ;
 int memset (struct ext4_inode*,int ,int ) ;
 int strlen (char const*) ;

int
ext4_xattr_set_handle(handle_t *handle, struct inode *inode, int name_index,
        const char *name, const void *value, size_t value_len,
        int flags)
{
 struct ext4_xattr_info i = {
  .name_index = name_index,
  .name = name,
  .value = value,
  .value_len = value_len,
  .in_inode = 0,
 };
 struct ext4_xattr_ibody_find is = {
  .s = { .not_found = -ENODATA, },
 };
 struct ext4_xattr_block_find bs = {
  .s = { .not_found = -ENODATA, },
 };
 int no_expand;
 int error;

 if (!name)
  return -EINVAL;
 if (strlen(name) > 255)
  return -ERANGE;

 ext4_write_lock_xattr(inode, &no_expand);


 if (ext4_handle_valid(handle)) {
  struct buffer_head *bh;
  int credits;

  bh = ext4_xattr_get_block(inode);
  if (IS_ERR(bh)) {
   error = PTR_ERR(bh);
   goto cleanup;
  }

  credits = __ext4_xattr_set_credits(inode->i_sb, inode, bh,
         value_len,
         flags & XATTR_CREATE);
  brelse(bh);

  if (!ext4_handle_has_enough_credits(handle, credits)) {
   error = -ENOSPC;
   goto cleanup;
  }
 }

 error = ext4_reserve_inode_write(handle, inode, &is.iloc);
 if (error)
  goto cleanup;

 if (ext4_test_inode_state(inode, EXT4_STATE_NEW)) {
  struct ext4_inode *raw_inode = ext4_raw_inode(&is.iloc);
  memset(raw_inode, 0, EXT4_SB(inode->i_sb)->s_inode_size);
  ext4_clear_inode_state(inode, EXT4_STATE_NEW);
 }

 error = ext4_xattr_ibody_find(inode, &i, &is);
 if (error)
  goto cleanup;
 if (is.s.not_found)
  error = ext4_xattr_block_find(inode, &i, &bs);
 if (error)
  goto cleanup;
 if (is.s.not_found && bs.s.not_found) {
  error = -ENODATA;
  if (flags & XATTR_REPLACE)
   goto cleanup;
  error = 0;
  if (!value)
   goto cleanup;
 } else {
  error = -EEXIST;
  if (flags & XATTR_CREATE)
   goto cleanup;
 }

 if (!value) {
  if (!is.s.not_found)
   error = ext4_xattr_ibody_set(handle, inode, &i, &is);
  else if (!bs.s.not_found)
   error = ext4_xattr_block_set(handle, inode, &i, &bs);
 } else {
  error = 0;

  if (!is.s.not_found && ext4_xattr_value_same(&is.s, &i))
   goto cleanup;
  if (!bs.s.not_found && ext4_xattr_value_same(&bs.s, &i))
   goto cleanup;

  if (ext4_has_feature_ea_inode(inode->i_sb) &&
      (EXT4_XATTR_SIZE(i.value_len) >
   EXT4_XATTR_MIN_LARGE_EA_SIZE(inode->i_sb->s_blocksize)))
   i.in_inode = 1;
retry_inode:
  error = ext4_xattr_ibody_set(handle, inode, &i, &is);
  if (!error && !bs.s.not_found) {
   i.value = ((void*)0);
   error = ext4_xattr_block_set(handle, inode, &i, &bs);
  } else if (error == -ENOSPC) {
   if (EXT4_I(inode)->i_file_acl && !bs.s.base) {
    brelse(bs.bh);
    bs.bh = ((void*)0);
    error = ext4_xattr_block_find(inode, &i, &bs);
    if (error)
     goto cleanup;
   }
   error = ext4_xattr_block_set(handle, inode, &i, &bs);
   if (!error && !is.s.not_found) {
    i.value = ((void*)0);
    error = ext4_xattr_ibody_set(handle, inode, &i,
            &is);
   } else if (error == -ENOSPC) {




    if (ext4_has_feature_ea_inode(inode->i_sb) &&
        !i.in_inode) {
     i.in_inode = 1;
     goto retry_inode;
    }
   }
  }
 }
 if (!error) {
  ext4_xattr_update_super_block(handle, inode->i_sb);
  inode->i_ctime = current_time(inode);
  if (!value)
   no_expand = 0;
  error = ext4_mark_iloc_dirty(handle, inode, &is.iloc);




  is.iloc.bh = ((void*)0);
  if (IS_SYNC(inode))
   ext4_handle_sync(handle);
 }

cleanup:
 brelse(is.iloc.bh);
 brelse(bs.bh);
 ext4_write_unlock_xattr(inode, &no_expand);
 return error;
}
