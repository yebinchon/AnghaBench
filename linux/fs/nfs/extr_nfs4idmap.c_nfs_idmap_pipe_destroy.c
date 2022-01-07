
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_pipe_dir_object {struct idmap* pdo_data; } ;
struct rpc_pipe {int * dentry; } ;
struct idmap {struct rpc_pipe* idmap_pipe; } ;
struct dentry {int dummy; } ;


 int rpc_unlink (int *) ;

__attribute__((used)) static void nfs_idmap_pipe_destroy(struct dentry *dir,
  struct rpc_pipe_dir_object *pdo)
{
 struct idmap *idmap = pdo->pdo_data;
 struct rpc_pipe *pipe = idmap->idmap_pipe;

 if (pipe->dentry) {
  rpc_unlink(pipe->dentry);
  pipe->dentry = ((void*)0);
 }
}
