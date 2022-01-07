
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_pipe_dir_object {int dummy; } ;
struct gss_pipe {struct rpc_pipe_dir_object pdo; } ;
struct gss_alloc_pdo {int upcall_ops; int name; int clnt; } ;


 int IS_ERR (struct gss_pipe*) ;
 struct gss_pipe* gss_pipe_alloc (int ,int ,int ) ;

__attribute__((used)) static struct rpc_pipe_dir_object *gss_pipe_alloc_pdo(void *data)
{
 struct gss_pipe *gss_pipe;
 struct gss_alloc_pdo *args = data;

 gss_pipe = gss_pipe_alloc(args->clnt, args->name, args->upcall_ops);
 if (!IS_ERR(gss_pipe))
  return &gss_pipe->pdo;
 return ((void*)0);
}
