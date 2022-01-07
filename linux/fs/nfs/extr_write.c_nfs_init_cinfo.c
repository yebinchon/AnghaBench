
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_direct_req {int dummy; } ;
struct nfs_commit_info {int dummy; } ;
struct inode {int dummy; } ;


 int nfs_init_cinfo_from_dreq (struct nfs_commit_info*,struct nfs_direct_req*) ;
 int nfs_init_cinfo_from_inode (struct nfs_commit_info*,struct inode*) ;

void nfs_init_cinfo(struct nfs_commit_info *cinfo,
      struct inode *inode,
      struct nfs_direct_req *dreq)
{
 if (dreq)
  nfs_init_cinfo_from_dreq(cinfo, dreq);
 else
  nfs_init_cinfo_from_inode(cinfo, inode);
}
