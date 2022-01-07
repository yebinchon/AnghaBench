
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_pipe_dir_object {struct gss_pipe* pdo_data; } ;
struct rpc_pipe {int * dentry; } ;
struct gss_pipe {struct rpc_pipe* pipe; } ;
struct dentry {int dummy; } ;


 int rpc_unlink (int *) ;

__attribute__((used)) static void gss_pipe_dentry_destroy(struct dentry *dir,
  struct rpc_pipe_dir_object *pdo)
{
 struct gss_pipe *gss_pipe = pdo->pdo_data;
 struct rpc_pipe *pipe = gss_pipe->pipe;

 if (pipe->dentry != ((void*)0)) {
  rpc_unlink(pipe->dentry);
  pipe->dentry = ((void*)0);
 }
}
