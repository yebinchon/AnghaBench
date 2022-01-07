
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_commit_info {int dummy; } ;
struct list_head {int dummy; } ;
struct inode {int dummy; } ;


 int PNFS_NOT_ATTEMPTED ;
 int nfs_commit_list (struct inode*,struct list_head*,int,struct nfs_commit_info*) ;
 int pnfs_commit_list (struct inode*,struct list_head*,int,struct nfs_commit_info*) ;

int nfs_generic_commit_list(struct inode *inode, struct list_head *head,
       int how, struct nfs_commit_info *cinfo)
{
 int status;

 status = pnfs_commit_list(inode, head, how, cinfo);
 if (status == PNFS_NOT_ATTEMPTED)
  status = nfs_commit_list(inode, head, how, cinfo);
 return status;
}
