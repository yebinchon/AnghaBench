
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dentry* pdh_dentry; } ;
struct rpc_clnt {TYPE_1__ cl_pipedir_objects; } ;
struct dentry {int dummy; } ;


 int rpc_clntdir_depopulate ;
 int rpc_destroy_pipe_dir_objects (TYPE_1__*) ;
 int rpc_rmdir_depopulate (struct dentry*,int ) ;

int rpc_remove_client_dir(struct rpc_clnt *rpc_client)
{
 struct dentry *dentry = rpc_client->cl_pipedir_objects.pdh_dentry;

 if (dentry == ((void*)0))
  return 0;
 rpc_destroy_pipe_dir_objects(&rpc_client->cl_pipedir_objects);
 rpc_client->cl_pipedir_objects.pdh_dentry = ((void*)0);
 return rpc_rmdir_depopulate(dentry, rpc_clntdir_depopulate);
}
