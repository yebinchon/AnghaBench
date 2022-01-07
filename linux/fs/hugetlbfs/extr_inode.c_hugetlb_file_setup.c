
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_flags_t ;
struct vfsmount {int mnt_sb; } ;
struct user_struct {int dummy; } ;
struct inode {size_t i_size; int i_flags; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int pid; int comm; } ;


 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 int ENOSPC ;
 int EPERM ;
 struct file* ERR_PTR (int ) ;
 int HUGETLB_SHMFS_INODE ;
 int IS_ERR (struct file*) ;
 int O_RDWR ;
 int S_IFREG ;
 int S_IRWXUGO ;
 int S_PRIVATE ;
 struct file* alloc_file_pseudo (struct inode*,struct vfsmount*,char const*,int ,int *) ;
 int can_do_hugetlb_shm () ;
 int clear_nlink (struct inode*) ;
 TYPE_1__* current ;
 struct user_struct* current_user () ;
 int get_hstate_idx (int) ;
 int hstate_inode (struct inode*) ;
 size_t huge_page_shift (int ) ;
 scalar_t__ hugetlb_reserve_pages (struct inode*,int ,size_t,int *,int ) ;
 int hugetlbfs_file_operations ;
 struct inode* hugetlbfs_get_inode (int ,int *,int,int ) ;
 struct vfsmount** hugetlbfs_vfsmount ;
 int iput (struct inode*) ;
 int pr_warn_once (char*,int ,int ) ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;
 scalar_t__ user_shm_lock (size_t,struct user_struct*) ;
 int user_shm_unlock (size_t,struct user_struct*) ;

struct file *hugetlb_file_setup(const char *name, size_t size,
    vm_flags_t acctflag, struct user_struct **user,
    int creat_flags, int page_size_log)
{
 struct inode *inode;
 struct vfsmount *mnt;
 int hstate_idx;
 struct file *file;

 hstate_idx = get_hstate_idx(page_size_log);
 if (hstate_idx < 0)
  return ERR_PTR(-ENODEV);

 *user = ((void*)0);
 mnt = hugetlbfs_vfsmount[hstate_idx];
 if (!mnt)
  return ERR_PTR(-ENOENT);

 if (creat_flags == HUGETLB_SHMFS_INODE && !can_do_hugetlb_shm()) {
  *user = current_user();
  if (user_shm_lock(size, *user)) {
   task_lock(current);
   pr_warn_once("%s (%d): Using mlock ulimits for SHM_HUGETLB is deprecated\n",
    current->comm, current->pid);
   task_unlock(current);
  } else {
   *user = ((void*)0);
   return ERR_PTR(-EPERM);
  }
 }

 file = ERR_PTR(-ENOSPC);
 inode = hugetlbfs_get_inode(mnt->mnt_sb, ((void*)0), S_IFREG | S_IRWXUGO, 0);
 if (!inode)
  goto out;
 if (creat_flags == HUGETLB_SHMFS_INODE)
  inode->i_flags |= S_PRIVATE;

 inode->i_size = size;
 clear_nlink(inode);

 if (hugetlb_reserve_pages(inode, 0,
   size >> huge_page_shift(hstate_inode(inode)), ((void*)0),
   acctflag))
  file = ERR_PTR(-ENOMEM);
 else
  file = alloc_file_pseudo(inode, mnt, name, O_RDWR,
     &hugetlbfs_file_operations);
 if (!IS_ERR(file))
  return file;

 iput(inode);
out:
 if (*user) {
  user_shm_unlock(size, *user);
  *user = ((void*)0);
 }
 return file;
}
