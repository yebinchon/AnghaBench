
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;


 int iput (struct inode*) ;
 int nfs_sb_deactive (struct super_block*) ;

__attribute__((used)) static inline void nfs_iput_and_deactive(struct inode *inode)
{
 if (inode != ((void*)0)) {
  struct super_block *sb = inode->i_sb;

  iput(inode);
  nfs_sb_deactive(sb);
 }
}
