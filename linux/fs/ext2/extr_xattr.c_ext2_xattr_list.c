
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct xattr_handler {char* name; int prefix; scalar_t__ (* list ) (struct dentry*) ;} ;
struct mb_cache {int dummy; } ;
struct inode {TYPE_1__* i_sb; int i_ino; } ;
struct ext2_xattr_entry {size_t e_name_len; char const* e_name; int e_name_index; } ;
struct dentry {int dummy; } ;
struct buffer_head {char* b_data; int b_size; int b_count; } ;
struct TYPE_8__ {int xattr_sem; int i_file_acl; } ;
struct TYPE_7__ {int h_refcount; } ;
struct TYPE_6__ {int s_blocksize; } ;


 struct mb_cache* EA_BLOCK_CACHE (struct inode*) ;
 int EIO ;
 int ERANGE ;
 TYPE_5__* EXT2_I (struct inode*) ;
 struct ext2_xattr_entry* EXT2_XATTR_NEXT (struct ext2_xattr_entry*) ;
 struct ext2_xattr_entry* FIRST_ENTRY (struct buffer_head*) ;
 TYPE_2__* HDR (struct buffer_head*) ;
 int IS_LAST_ENTRY (struct ext2_xattr_entry*) ;
 int atomic_read (int *) ;
 int brelse (struct buffer_head*) ;
 struct inode* d_inode (struct dentry*) ;
 int down_read (int *) ;
 int ea_bdebug (struct buffer_head*,char*,int ,int ) ;
 int ea_idebug (struct inode*,char*,...) ;
 int ext2_error (TYPE_1__*,char*,char*,int ,int ) ;
 scalar_t__ ext2_xattr_cache_insert (struct mb_cache*,struct buffer_head*) ;
 int ext2_xattr_entry_valid (struct ext2_xattr_entry*,char*,int ) ;
 struct xattr_handler* ext2_xattr_handler (int ) ;
 int ext2_xattr_header_valid (TYPE_2__*) ;
 int le32_to_cpu (int ) ;
 int memcpy (char*,char const*,size_t) ;
 struct buffer_head* sb_bread (TYPE_1__*,int ) ;
 size_t strlen (char const*) ;
 scalar_t__ stub1 (struct dentry*) ;
 int up_read (int *) ;

__attribute__((used)) static int
ext2_xattr_list(struct dentry *dentry, char *buffer, size_t buffer_size)
{
 struct inode *inode = d_inode(dentry);
 struct buffer_head *bh = ((void*)0);
 struct ext2_xattr_entry *entry;
 char *end;
 size_t rest = buffer_size;
 int error;
 struct mb_cache *ea_block_cache = EA_BLOCK_CACHE(inode);

 ea_idebug(inode, "buffer=%p, buffer_size=%ld",
    buffer, (long)buffer_size);

 down_read(&EXT2_I(inode)->xattr_sem);
 error = 0;
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
  ext2_error(inode->i_sb, "ext2_xattr_list",
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
  entry = EXT2_XATTR_NEXT(entry);
 }
 if (ext2_xattr_cache_insert(ea_block_cache, bh))
  ea_idebug(inode, "cache insert failed");


 for (entry = FIRST_ENTRY(bh); !IS_LAST_ENTRY(entry);
      entry = EXT2_XATTR_NEXT(entry)) {
  const struct xattr_handler *handler =
   ext2_xattr_handler(entry->e_name_index);

  if (handler && (!handler->list || handler->list(dentry))) {
   const char *prefix = handler->prefix ?: handler->name;
   size_t prefix_len = strlen(prefix);
   size_t size = prefix_len + entry->e_name_len + 1;

   if (buffer) {
    if (size > rest) {
     error = -ERANGE;
     goto cleanup;
    }
    memcpy(buffer, prefix, prefix_len);
    buffer += prefix_len;
    memcpy(buffer, entry->e_name, entry->e_name_len);
    buffer += entry->e_name_len;
    *buffer++ = 0;
   }
   rest -= size;
  }
 }
 error = buffer_size - rest;

cleanup:
 brelse(bh);
 up_read(&EXT2_I(inode)->xattr_sem);

 return error;
}
