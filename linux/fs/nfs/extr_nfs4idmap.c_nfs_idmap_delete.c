
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_client {TYPE_1__* cl_rpcclient; int cl_net; struct idmap* cl_idmap; } ;
struct idmap {int cred; int idmap_pipe; int idmap_pdo; } ;
struct TYPE_2__ {int cl_pipedir_objects; } ;


 int kfree (struct idmap*) ;
 int put_cred (int ) ;
 int rpc_destroy_pipe_data (int ) ;
 int rpc_remove_pipe_dir_object (int ,int *,int *) ;

void
nfs_idmap_delete(struct nfs_client *clp)
{
 struct idmap *idmap = clp->cl_idmap;

 if (!idmap)
  return;
 clp->cl_idmap = ((void*)0);
 rpc_remove_pipe_dir_object(clp->cl_net,
   &clp->cl_rpcclient->cl_pipedir_objects,
   &idmap->idmap_pdo);
 rpc_destroy_pipe_data(idmap->idmap_pipe);
 put_cred(idmap->cred);
 kfree(idmap);
}
