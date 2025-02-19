
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct inode {int dummy; } ;
struct ext4_xattr_info {unsigned int value_len; void* value; int name; int name_index; } ;
struct TYPE_9__ {int bh; } ;
struct TYPE_8__ {TYPE_1__* here; int not_found; } ;
struct ext4_xattr_ibody_find {TYPE_3__ iloc; TYPE_2__ s; } ;
typedef int handle_t ;
struct TYPE_10__ {unsigned int i_inline_size; scalar_t__ i_inline_off; } ;
struct TYPE_7__ {int e_value_size; } ;


 int BUFFER_TRACE (int ,char*) ;
 int BUG_ON (int ) ;
 int ENODATA ;
 int ENOMEM ;
 TYPE_6__* EXT4_I (struct inode*) ;
 unsigned int EXT4_MIN_INLINE_DATA_SIZE ;
 int EXT4_STATE_MAY_INLINE_DATA ;
 int EXT4_XATTR_INDEX_SYSTEM ;
 int EXT4_XATTR_SYSTEM_DATA ;
 int GFP_NOFS ;
 int brelse (int ) ;
 int ext4_get_inode_loc (struct inode*,TYPE_3__*) ;
 int ext4_journal_get_write_access (int *,int ) ;
 int ext4_mark_iloc_dirty (int *,struct inode*,TYPE_3__*) ;
 scalar_t__ ext4_raw_inode (TYPE_3__*) ;
 int ext4_set_inode_state (struct inode*,int ) ;
 int ext4_xattr_ibody_find (struct inode*,struct ext4_xattr_info*,struct ext4_xattr_ibody_find*) ;
 int ext4_xattr_ibody_get (struct inode*,int ,int ,void*,unsigned int) ;
 int ext4_xattr_ibody_inline_set (int *,struct inode*,struct ext4_xattr_info*,struct ext4_xattr_ibody_find*) ;
 int get_bh (int ) ;
 int kfree (void*) ;
 void* kzalloc (unsigned int,int ) ;
 unsigned int le32_to_cpu (int ) ;

__attribute__((used)) static int ext4_update_inline_data(handle_t *handle, struct inode *inode,
       unsigned int len)
{
 int error;
 void *value = ((void*)0);
 struct ext4_xattr_ibody_find is = {
  .s = { .not_found = -ENODATA, },
 };
 struct ext4_xattr_info i = {
  .name_index = EXT4_XATTR_INDEX_SYSTEM,
  .name = EXT4_XATTR_SYSTEM_DATA,
 };


 if (len <= EXT4_I(inode)->i_inline_size)
  return 0;

 error = ext4_get_inode_loc(inode, &is.iloc);
 if (error)
  return error;

 error = ext4_xattr_ibody_find(inode, &i, &is);
 if (error)
  goto out;

 BUG_ON(is.s.not_found);

 len -= EXT4_MIN_INLINE_DATA_SIZE;
 value = kzalloc(len, GFP_NOFS);
 if (!value) {
  error = -ENOMEM;
  goto out;
 }

 error = ext4_xattr_ibody_get(inode, i.name_index, i.name,
         value, len);
 if (error == -ENODATA)
  goto out;

 BUFFER_TRACE(is.iloc.bh, "get_write_access");
 error = ext4_journal_get_write_access(handle, is.iloc.bh);
 if (error)
  goto out;


 i.value = value;
 i.value_len = len;

 error = ext4_xattr_ibody_inline_set(handle, inode, &i, &is);
 if (error)
  goto out;

 EXT4_I(inode)->i_inline_off = (u16)((void *)is.s.here -
          (void *)ext4_raw_inode(&is.iloc));
 EXT4_I(inode)->i_inline_size = EXT4_MIN_INLINE_DATA_SIZE +
    le32_to_cpu(is.s.here->e_value_size);
 ext4_set_inode_state(inode, EXT4_STATE_MAY_INLINE_DATA);
 get_bh(is.iloc.bh);
 error = ext4_mark_iloc_dirty(handle, inode, &is.iloc);

out:
 kfree(value);
 brelse(is.iloc.bh);
 return error;
}
