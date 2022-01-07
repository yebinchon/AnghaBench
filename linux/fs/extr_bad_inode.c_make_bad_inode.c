
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int * i_fop; int i_opflags; int * i_op; int i_ctime; int i_mtime; int i_atime; int i_mode; } ;


 int IOP_XATTR ;
 int S_IFREG ;
 int bad_file_ops ;
 int bad_inode_ops ;
 int current_time (struct inode*) ;
 int remove_inode_hash (struct inode*) ;

void make_bad_inode(struct inode *inode)
{
 remove_inode_hash(inode);

 inode->i_mode = S_IFREG;
 inode->i_atime = inode->i_mtime = inode->i_ctime =
  current_time(inode);
 inode->i_op = &bad_inode_ops;
 inode->i_opflags &= ~IOP_XATTR;
 inode->i_fop = &bad_file_ops;
}
