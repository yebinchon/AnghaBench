
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {TYPE_1__* super; } ;
struct nfs_fattr {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int s_root; } ;


 int ENOMEM ;
 int NFS_FH (struct inode*) ;
 struct inode* d_inode (int ) ;
 struct nfs_fattr* nfs_alloc_fattr () ;
 int nfs_free_fattr (struct nfs_fattr*) ;
 int nfs_probe_fsinfo (struct nfs_server*,int ,struct nfs_fattr*) ;

__attribute__((used)) static int nfs_probe_destination(struct nfs_server *server)
{
 struct inode *inode = d_inode(server->super->s_root);
 struct nfs_fattr *fattr;
 int error;

 fattr = nfs_alloc_fattr();
 if (fattr == ((void*)0))
  return -ENOMEM;



 error = nfs_probe_fsinfo(server, NFS_FH(inode), fattr);

 nfs_free_fattr(fattr);
 return error;
}
