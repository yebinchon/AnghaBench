
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_commit_info {int dummy; } ;
struct list_head {int dummy; } ;
struct inode {int dummy; } ;


 int filelayout_initiate_commit ;
 int pnfs_generic_commit_pagelist (struct inode*,struct list_head*,int,struct nfs_commit_info*,int ) ;

__attribute__((used)) static int
filelayout_commit_pagelist(struct inode *inode, struct list_head *mds_pages,
      int how, struct nfs_commit_info *cinfo)
{
 return pnfs_generic_commit_pagelist(inode, mds_pages, how, cinfo,
         filelayout_initiate_commit);
}
