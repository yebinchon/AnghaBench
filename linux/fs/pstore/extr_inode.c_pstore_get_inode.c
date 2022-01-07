
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_ctime; int i_mtime; int i_atime; int i_ino; } ;


 int current_time (struct inode*) ;
 int get_next_ino () ;
 struct inode* new_inode (struct super_block*) ;

__attribute__((used)) static struct inode *pstore_get_inode(struct super_block *sb)
{
 struct inode *inode = new_inode(sb);
 if (inode) {
  inode->i_ino = get_next_ino();
  inode->i_atime = inode->i_mtime = inode->i_ctime = current_time(inode);
 }
 return inode;
}
