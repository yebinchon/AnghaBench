
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct inode {int i_mapping; } ;
struct fsverity_descriptor_location {int pos; int size; int version; } ;
struct file {int dummy; } ;
typedef int dloc ;


 int F2FS_XATTR_INDEX_VERITY ;
 int F2FS_XATTR_NAME_VERITY ;
 int FI_VERITY_IN_PROGRESS ;
 int XATTR_CREATE ;
 int clear_inode_flag (struct inode*,int ) ;
 int cpu_to_le32 (size_t) ;
 int cpu_to_le64 (scalar_t__) ;
 int f2fs_mark_inode_dirty_sync (struct inode*,int) ;
 int f2fs_set_inode_flags (struct inode*) ;
 int f2fs_setxattr (struct inode*,int ,int ,struct fsverity_descriptor_location*,int,int *,int ) ;
 int f2fs_truncate (struct inode*) ;
 scalar_t__ f2fs_verity_metadata_pos (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 int file_set_verity (struct inode*) ;
 int filemap_write_and_wait (int ) ;
 int pagecache_write (struct inode*,void const*,size_t,scalar_t__) ;

__attribute__((used)) static int f2fs_end_enable_verity(struct file *filp, const void *desc,
      size_t desc_size, u64 merkle_tree_size)
{
 struct inode *inode = file_inode(filp);
 u64 desc_pos = f2fs_verity_metadata_pos(inode) + merkle_tree_size;
 struct fsverity_descriptor_location dloc = {
  .version = cpu_to_le32(1),
  .size = cpu_to_le32(desc_size),
  .pos = cpu_to_le64(desc_pos),
 };
 int err = 0;

 if (desc != ((void*)0)) {

  err = pagecache_write(inode, desc, desc_size, desc_pos);


  if (!err)
   err = filemap_write_and_wait(inode->i_mapping);
 }


 if (desc == ((void*)0) || err)
  f2fs_truncate(inode);

 clear_inode_flag(inode, FI_VERITY_IN_PROGRESS);

 if (desc != ((void*)0) && !err) {
  err = f2fs_setxattr(inode, F2FS_XATTR_INDEX_VERITY,
        F2FS_XATTR_NAME_VERITY, &dloc, sizeof(dloc),
        ((void*)0), XATTR_CREATE);
  if (!err) {
   file_set_verity(inode);
   f2fs_set_inode_flags(inode);
   f2fs_mark_inode_dirty_sync(inode, 1);
  }
 }
 return err;
}
