
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_sb; } ;
struct inode {unsigned int i_flags; int i_size; } ;
struct file {int mnt_sb; } ;
typedef int loff_t ;


 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 struct vfsmount* ERR_CAST (struct vfsmount*) ;
 struct vfsmount* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct vfsmount*) ;
 int MAX_LFS_FILESIZE ;
 int O_RDWR ;
 int S_IFREG ;
 int S_IRWXUGO ;
 struct vfsmount* alloc_file_pseudo (struct inode*,struct vfsmount*,char const*,int ,int *) ;
 int clear_nlink (struct inode*) ;
 int iput (struct inode*) ;
 int ramfs_nommu_expand_for_mapping (struct inode*,int ) ;
 scalar_t__ shmem_acct_size (unsigned long,int ) ;
 int shmem_file_operations ;
 struct inode* shmem_get_inode (int ,int *,int,int ,unsigned long) ;
 int shmem_unacct_size (unsigned long,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct file *__shmem_file_setup(struct vfsmount *mnt, const char *name, loff_t size,
           unsigned long flags, unsigned int i_flags)
{
 struct inode *inode;
 struct file *res;

 if (IS_ERR(mnt))
  return ERR_CAST(mnt);

 if (size < 0 || size > MAX_LFS_FILESIZE)
  return ERR_PTR(-EINVAL);

 if (shmem_acct_size(flags, size))
  return ERR_PTR(-ENOMEM);

 inode = shmem_get_inode(mnt->mnt_sb, ((void*)0), S_IFREG | S_IRWXUGO, 0,
    flags);
 if (unlikely(!inode)) {
  shmem_unacct_size(flags, size);
  return ERR_PTR(-ENOSPC);
 }
 inode->i_flags |= i_flags;
 inode->i_size = size;
 clear_nlink(inode);
 res = ERR_PTR(ramfs_nommu_expand_for_mapping(inode, size));
 if (!IS_ERR(res))
  res = alloc_file_pseudo(inode, mnt, name, O_RDWR,
    &shmem_file_operations);
 if (IS_ERR(res))
  iput(inode);
 return res;
}
