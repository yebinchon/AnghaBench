
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct nfs_server {TYPE_2__* client; TYPE_4__* nfs_client; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct dentry {int d_name; } ;
struct TYPE_8__ {TYPE_3__* rpc_ops; } ;
struct TYPE_7__ {int (* lookup ) (int ,int *,struct nfs_fh*,struct nfs_fattr*,int *) ;} ;
struct TYPE_6__ {TYPE_1__* cl_auth; } ;
struct TYPE_5__ {int au_flavor; } ;


 struct vfsmount* ERR_PTR (int) ;
 int d_inode (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 struct vfsmount* nfs_do_submount (struct dentry*,struct nfs_fh*,struct nfs_fattr*,int ) ;
 int stub1 (int ,int *,struct nfs_fh*,struct nfs_fattr*,int *) ;

struct vfsmount *nfs_submount(struct nfs_server *server, struct dentry *dentry,
         struct nfs_fh *fh, struct nfs_fattr *fattr)
{
 int err;
 struct dentry *parent = dget_parent(dentry);


 err = server->nfs_client->rpc_ops->lookup(d_inode(parent), &dentry->d_name, fh, fattr, ((void*)0));
 dput(parent);
 if (err != 0)
  return ERR_PTR(err);

 return nfs_do_submount(dentry, fh, fattr, server->client->cl_auth->au_flavor);
}
