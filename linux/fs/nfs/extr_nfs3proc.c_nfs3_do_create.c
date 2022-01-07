
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fattr; int fh; int dir_attr; } ;
struct nfs3_createdata {TYPE_1__ res; int msg; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* ERR_PTR (int) ;
 int NFS_CLIENT (struct inode*) ;
 struct dentry* nfs_add_or_obtain (struct dentry*,int ,int ,int *) ;
 int nfs_post_op_update_inode (struct inode*,int ) ;
 int rpc_call_sync (int ,int *,int ) ;

__attribute__((used)) static struct dentry *
nfs3_do_create(struct inode *dir, struct dentry *dentry, struct nfs3_createdata *data)
{
 int status;

 status = rpc_call_sync(NFS_CLIENT(dir), &data->msg, 0);
 nfs_post_op_update_inode(dir, data->res.dir_attr);
 if (status != 0)
  return ERR_PTR(status);

 return nfs_add_or_obtain(dentry, data->res.fh, data->res.fattr, ((void*)0));
}
