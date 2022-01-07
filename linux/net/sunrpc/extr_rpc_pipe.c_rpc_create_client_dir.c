
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dentry* pdh_dentry; } ;
struct rpc_clnt {TYPE_1__ cl_pipedir_objects; } ;
struct dentry {int dummy; } ;


 int IS_ERR (struct dentry*) ;
 int rpc_clntdir_populate ;
 int rpc_create_pipe_dir_objects (TYPE_1__*) ;
 struct dentry* rpc_mkdir_populate (struct dentry*,char const*,int,int *,int ,struct rpc_clnt*) ;

struct dentry *rpc_create_client_dir(struct dentry *dentry,
       const char *name,
       struct rpc_clnt *rpc_client)
{
 struct dentry *ret;

 ret = rpc_mkdir_populate(dentry, name, 0555, ((void*)0),
     rpc_clntdir_populate, rpc_client);
 if (!IS_ERR(ret)) {
  rpc_client->cl_pipedir_objects.pdh_dentry = ret;
  rpc_create_pipe_dir_objects(&rpc_client->cl_pipedir_objects);
 }
 return ret;
}
