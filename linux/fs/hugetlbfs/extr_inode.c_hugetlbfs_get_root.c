
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_mode; int * i_fop; int * i_op; int i_ctime; int i_mtime; int i_atime; int i_gid; int i_uid; int i_ino; } ;
struct hugetlbfs_fs_context {int mode; int gid; int uid; } ;


 int S_IFDIR ;
 int current_time (struct inode*) ;
 int get_next_ino () ;
 int hugetlbfs_dir_inode_operations ;
 int inc_nlink (struct inode*) ;
 int lockdep_annotate_inode_mutex_key (struct inode*) ;
 struct inode* new_inode (struct super_block*) ;
 int simple_dir_operations ;

__attribute__((used)) static struct inode *hugetlbfs_get_root(struct super_block *sb,
     struct hugetlbfs_fs_context *ctx)
{
 struct inode *inode;

 inode = new_inode(sb);
 if (inode) {
  inode->i_ino = get_next_ino();
  inode->i_mode = S_IFDIR | ctx->mode;
  inode->i_uid = ctx->uid;
  inode->i_gid = ctx->gid;
  inode->i_atime = inode->i_mtime = inode->i_ctime = current_time(inode);
  inode->i_op = &hugetlbfs_dir_inode_operations;
  inode->i_fop = &simple_dir_operations;

  inc_nlink(inode);
  lockdep_annotate_inode_mutex_key(inode);
 }
 return inode;
}
