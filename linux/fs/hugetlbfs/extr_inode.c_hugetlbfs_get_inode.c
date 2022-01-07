
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct super_block {int dummy; } ;
struct resv_map {int refs; } ;
struct inode {int * i_op; int * i_fop; TYPE_1__* i_mapping; int i_ctime; int i_mtime; int i_atime; int i_ino; } ;
struct hugetlbfs_inode_info {int seals; } ;
typedef int dev_t ;
struct TYPE_2__ {struct resv_map* private_data; int * a_ops; int i_mmap_rwsem; } ;


 int F_SEAL_SEAL ;
 struct hugetlbfs_inode_info* HUGETLBFS_I (struct inode*) ;


 int S_IFMT ;

 scalar_t__ S_ISLNK (int) ;
 scalar_t__ S_ISREG (int) ;
 int current_time (struct inode*) ;
 int get_next_ino () ;
 int hugetlbfs_aops ;
 int hugetlbfs_dir_inode_operations ;
 int hugetlbfs_file_operations ;
 int hugetlbfs_i_mmap_rwsem_key ;
 int hugetlbfs_inode_operations ;
 int inc_nlink (struct inode*) ;
 int init_special_inode (struct inode*,int,int ) ;
 int inode_init_owner (struct inode*,struct inode*,int) ;
 int inode_nohighmem (struct inode*) ;
 int kref_put (int *,int ) ;
 int lockdep_annotate_inode_mutex_key (struct inode*) ;
 int lockdep_set_class (int *,int *) ;
 struct inode* new_inode (struct super_block*) ;
 int page_symlink_inode_operations ;
 struct resv_map* resv_map_alloc () ;
 int resv_map_release ;
 int simple_dir_operations ;

__attribute__((used)) static struct inode *hugetlbfs_get_inode(struct super_block *sb,
     struct inode *dir,
     umode_t mode, dev_t dev)
{
 struct inode *inode;
 struct resv_map *resv_map = ((void*)0);





 if (S_ISREG(mode) || S_ISLNK(mode)) {
  resv_map = resv_map_alloc();
  if (!resv_map)
   return ((void*)0);
 }

 inode = new_inode(sb);
 if (inode) {
  struct hugetlbfs_inode_info *info = HUGETLBFS_I(inode);

  inode->i_ino = get_next_ino();
  inode_init_owner(inode, dir, mode);
  lockdep_set_class(&inode->i_mapping->i_mmap_rwsem,
    &hugetlbfs_i_mmap_rwsem_key);
  inode->i_mapping->a_ops = &hugetlbfs_aops;
  inode->i_atime = inode->i_mtime = inode->i_ctime = current_time(inode);
  inode->i_mapping->private_data = resv_map;
  info->seals = F_SEAL_SEAL;
  switch (mode & S_IFMT) {
  default:
   init_special_inode(inode, mode, dev);
   break;
  case 128:
   inode->i_op = &hugetlbfs_inode_operations;
   inode->i_fop = &hugetlbfs_file_operations;
   break;
  case 130:
   inode->i_op = &hugetlbfs_dir_inode_operations;
   inode->i_fop = &simple_dir_operations;


   inc_nlink(inode);
   break;
  case 129:
   inode->i_op = &page_symlink_inode_operations;
   inode_nohighmem(inode);
   break;
  }
  lockdep_annotate_inode_mutex_key(inode);
 } else {
  if (resv_map)
   kref_put(&resv_map->refs, resv_map_release);
 }

 return inode;
}
