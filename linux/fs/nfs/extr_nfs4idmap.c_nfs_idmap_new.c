
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_pipe {int dummy; } ;
struct nfs_client {struct idmap* cl_idmap; TYPE_1__* cl_rpcclient; int cl_net; } ;
struct idmap {int cred; struct rpc_pipe* idmap_pipe; int idmap_pdo; int idmap_mutex; } ;
struct TYPE_2__ {int cl_pipedir_objects; int cl_cred; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct rpc_pipe*) ;
 int PTR_ERR (struct rpc_pipe*) ;
 int get_cred (int ) ;
 int idmap_upcall_ops ;
 int kfree (struct idmap*) ;
 struct idmap* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int nfs_idmap_pipe_dir_object_ops ;
 int put_cred (int ) ;
 int rpc_add_pipe_dir_object (int ,int *,int *) ;
 int rpc_destroy_pipe_data (struct rpc_pipe*) ;
 int rpc_init_pipe_dir_object (int *,int *,struct idmap*) ;
 struct rpc_pipe* rpc_mkpipe_data (int *,int ) ;

int
nfs_idmap_new(struct nfs_client *clp)
{
 struct idmap *idmap;
 struct rpc_pipe *pipe;
 int error;

 idmap = kzalloc(sizeof(*idmap), GFP_KERNEL);
 if (idmap == ((void*)0))
  return -ENOMEM;

 mutex_init(&idmap->idmap_mutex);
 idmap->cred = get_cred(clp->cl_rpcclient->cl_cred);

 rpc_init_pipe_dir_object(&idmap->idmap_pdo,
   &nfs_idmap_pipe_dir_object_ops,
   idmap);

 pipe = rpc_mkpipe_data(&idmap_upcall_ops, 0);
 if (IS_ERR(pipe)) {
  error = PTR_ERR(pipe);
  goto err;
 }
 idmap->idmap_pipe = pipe;

 error = rpc_add_pipe_dir_object(clp->cl_net,
   &clp->cl_rpcclient->cl_pipedir_objects,
   &idmap->idmap_pdo);
 if (error)
  goto err_destroy_pipe;

 clp->cl_idmap = idmap;
 return 0;
err_destroy_pipe:
 rpc_destroy_pipe_data(idmap->idmap_pipe);
err:
 put_cred(idmap->cred);
 kfree(idmap);
 return error;
}
