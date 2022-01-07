
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int dummy; } ;
struct inode {int dummy; } ;


 struct inode* iget5_locked (struct super_block*,int ,int ,int ,int *) ;
 int iget_set ;
 int iget_test ;
 int iput (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;

__attribute__((used)) static struct inode *gfs2_iget(struct super_block *sb, u64 no_addr)
{
 struct inode *inode;

repeat:
 inode = iget5_locked(sb, no_addr, iget_test, iget_set, &no_addr);
 if (!inode)
  return inode;
 if (is_bad_inode(inode)) {
  iput(inode);
  goto repeat;
 }
 return inode;
}
