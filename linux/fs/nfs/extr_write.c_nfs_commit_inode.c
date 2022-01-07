
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int __nfs_commit_inode (struct inode*,int,int *) ;

int nfs_commit_inode(struct inode *inode, int how)
{
 return __nfs_commit_inode(inode, how, ((void*)0));
}
