
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mb_cache {int dummy; } ;
struct inode {TYPE_1__* i_sb; int i_ino; } ;
struct ext2_xattr_entry {int e_value_offs; int e_value_size; } ;
struct buffer_head {char* b_data; int b_size; int b_count; } ;
struct TYPE_8__ {int xattr_sem; int i_file_acl; } ;
struct TYPE_7__ {int h_refcount; } ;
struct TYPE_6__ {int s_blocksize; } ;


 struct mb_cache* EA_BLOCK_CACHE (struct inode*) ;
 int EINVAL ;
 int EIO ;
 int ENODATA ;
 int ERANGE ;
 TYPE_5__* EXT2_I (struct inode*) ;
 struct ext2_xattr_entry* EXT2_XATTR_NEXT (struct ext2_xattr_entry*) ;
 struct ext2_xattr_entry* FIRST_ENTRY (struct buffer_head*) ;
 TYPE_2__* HDR (struct buffer_head*) ;
 int IS_LAST_ENTRY (struct ext2_xattr_entry*) ;
 int atomic_read (int *) ;
 int brelse (struct buffer_head*) ;
 int down_read (int *) ;
 int ea_bdebug (struct buffer_head*,char*,int ,size_t) ;
 int ea_idebug (struct inode*,char*,...) ;
 int ext2_error (TYPE_1__*,char*,char*,int ,int ) ;
 scalar_t__ ext2_xattr_cache_insert (struct mb_cache*,struct buffer_head*) ;
 int ext2_xattr_cmp_entry (int,size_t,char const*,struct ext2_xattr_entry*) ;
 int ext2_xattr_entry_valid (struct ext2_xattr_entry*,char*,int ) ;
 int ext2_xattr_header_valid (TYPE_2__*) ;
 int le16_to_cpu (int ) ;
 size_t le32_to_cpu (int ) ;
 int memcpy (void*,char*,size_t) ;
 struct buffer_head* sb_bread (TYPE_1__*,int ) ;
 size_t strlen (char const*) ;
 int up_read (int *) ;

int
ext2_xattr_get(struct inode *inode, int name_index, const char *name,
        void *buffer, size_t buffer_size)
{
 struct buffer_head *bh = ((void*)0);
 struct ext2_xattr_entry *entry;
 size_t name_len, size;
 char *end;
 int error, not_found;
 struct mb_cache *ea_block_cache = EA_BLOCK_CACHE(inode);

 ea_idebug(inode, "name=%d.%s, buffer=%p, buffer_size=%ld",
    name_index, name, buffer, (long)buffer_size);

 if (name == ((void*)0))
  return -EINVAL;
 name_len = strlen(name);
 if (name_len > 255)
  return -ERANGE;

 down_read(&EXT2_I(inode)->xattr_sem);
 error = -ENODATA;
 if (!EXT2_I(inode)->i_file_acl)
  goto cleanup;
 ea_idebug(inode, "reading block %d", EXT2_I(inode)->i_file_acl);
 bh = sb_bread(inode->i_sb, EXT2_I(inode)->i_file_acl);
 error = -EIO;
 if (!bh)
  goto cleanup;
 ea_bdebug(bh, "b_count=%d, refcount=%d",
  atomic_read(&(bh->b_count)), le32_to_cpu(HDR(bh)->h_refcount));
 end = bh->b_data + bh->b_size;
 if (!ext2_xattr_header_valid(HDR(bh))) {
bad_block:
  ext2_error(inode->i_sb, "ext2_xattr_get",
   "inode %ld: bad block %d", inode->i_ino,
   EXT2_I(inode)->i_file_acl);
  error = -EIO;
  goto cleanup;
 }


 entry = FIRST_ENTRY(bh);
 while (!IS_LAST_ENTRY(entry)) {
  if (!ext2_xattr_entry_valid(entry, end,
      inode->i_sb->s_blocksize))
   goto bad_block;

  not_found = ext2_xattr_cmp_entry(name_index, name_len, name,
       entry);
  if (!not_found)
   goto found;
  if (not_found < 0)
   break;

  entry = EXT2_XATTR_NEXT(entry);
 }
 if (ext2_xattr_cache_insert(ea_block_cache, bh))
  ea_idebug(inode, "cache insert failed");
 error = -ENODATA;
 goto cleanup;
found:
 size = le32_to_cpu(entry->e_value_size);
 if (ext2_xattr_cache_insert(ea_block_cache, bh))
  ea_idebug(inode, "cache insert failed");
 if (buffer) {
  error = -ERANGE;
  if (size > buffer_size)
   goto cleanup;

  memcpy(buffer, bh->b_data + le16_to_cpu(entry->e_value_offs),
   size);
 }
 error = size;

cleanup:
 brelse(bh);
 up_read(&EXT2_I(inode)->xattr_sem);

 return error;
}
