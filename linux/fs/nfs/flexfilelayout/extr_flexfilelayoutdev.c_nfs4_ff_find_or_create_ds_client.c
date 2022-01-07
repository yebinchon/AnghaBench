
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_clnt {int dummy; } ;
struct nfs_client {struct rpc_clnt* cl_rpcclient; } ;
struct nfs4_ff_layout_mirror {TYPE_2__* mirror_ds; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ds_versions; } ;
struct TYPE_3__ {int version; } ;


 int BUG () ;
 struct rpc_clnt* nfs4_find_or_create_ds_client (struct nfs_client*,struct inode*) ;

struct rpc_clnt *
nfs4_ff_find_or_create_ds_client(struct nfs4_ff_layout_mirror *mirror,
     struct nfs_client *ds_clp, struct inode *inode)
{
 switch (mirror->mirror_ds->ds_versions[0].version) {
 case 3:

  return ds_clp->cl_rpcclient;
 case 4:
  return nfs4_find_or_create_ds_client(ds_clp, inode);
 default:
  BUG();
 }
}
