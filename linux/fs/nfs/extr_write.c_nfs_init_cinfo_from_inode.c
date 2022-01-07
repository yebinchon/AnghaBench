
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_commit_info {int * completion_ops; int * dreq; int ds; int * mds; struct inode* inode; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int commit_info; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 int nfs_commit_completion_ops ;
 int pnfs_get_ds_info (struct inode*) ;

__attribute__((used)) static void nfs_init_cinfo_from_inode(struct nfs_commit_info *cinfo,
          struct inode *inode)
{
 cinfo->inode = inode;
 cinfo->mds = &NFS_I(inode)->commit_info;
 cinfo->ds = pnfs_get_ds_info(inode);
 cinfo->dreq = ((void*)0);
 cinfo->completion_ops = &nfs_commit_completion_ops;
}
