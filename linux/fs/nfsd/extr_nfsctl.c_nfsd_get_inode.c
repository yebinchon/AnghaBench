
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct super_block {int dummy; } ;
struct inode {int i_mode; int * i_op; int * i_fop; int i_ctime; int i_mtime; int i_atime; int i_ino; } ;


 int NFSD_MaxReserved ;

 int S_IFMT ;
 int current_time (struct inode*) ;
 int inc_nlink (struct inode*) ;
 int iunique (struct super_block*,int ) ;
 struct inode* new_inode (struct super_block*) ;
 int simple_dir_inode_operations ;
 int simple_dir_operations ;

__attribute__((used)) static struct inode *nfsd_get_inode(struct super_block *sb, umode_t mode)
{
 struct inode *inode = new_inode(sb);
 if (!inode)
  return ((void*)0);

 inode->i_ino = iunique(sb, NFSD_MaxReserved);
 inode->i_mode = mode;
 inode->i_atime = inode->i_mtime = inode->i_ctime = current_time(inode);
 switch (mode & S_IFMT) {
 case 128:
  inode->i_fop = &simple_dir_operations;
  inode->i_op = &simple_dir_inode_operations;
  inc_nlink(inode);
 default:
  break;
 }
 return inode;
}
