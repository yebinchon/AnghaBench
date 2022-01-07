
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;


 struct inode* igrab (struct inode*) ;
 int iput (struct inode*) ;
 int nfs_sb_active (int ) ;

__attribute__((used)) static inline struct inode *nfs_igrab_and_active(struct inode *inode)
{
 inode = igrab(inode);
 if (inode != ((void*)0) && !nfs_sb_active(inode->i_sb)) {
  iput(inode);
  inode = ((void*)0);
 }
 return inode;
}
