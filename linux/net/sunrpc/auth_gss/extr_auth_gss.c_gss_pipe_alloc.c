
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_pipe_ops {int dummy; } ;
struct rpc_clnt {int dummy; } ;
struct gss_pipe {char const* name; int pdo; int kref; struct rpc_clnt* clnt; int pipe; } ;


 int ENOMEM ;
 struct gss_pipe* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RPC_PIPE_WAIT_FOR_OPEN ;
 int gss_pipe_dir_object_ops ;
 int kfree (struct gss_pipe*) ;
 struct gss_pipe* kmalloc (int,int ) ;
 int kref_init (int *) ;
 int rpc_init_pipe_dir_object (int *,int *,struct gss_pipe*) ;
 int rpc_mkpipe_data (struct rpc_pipe_ops const*,int ) ;

__attribute__((used)) static struct gss_pipe *gss_pipe_alloc(struct rpc_clnt *clnt,
  const char *name,
  const struct rpc_pipe_ops *upcall_ops)
{
 struct gss_pipe *p;
 int err = -ENOMEM;

 p = kmalloc(sizeof(*p), GFP_KERNEL);
 if (p == ((void*)0))
  goto err;
 p->pipe = rpc_mkpipe_data(upcall_ops, RPC_PIPE_WAIT_FOR_OPEN);
 if (IS_ERR(p->pipe)) {
  err = PTR_ERR(p->pipe);
  goto err_free_gss_pipe;
 }
 p->name = name;
 p->clnt = clnt;
 kref_init(&p->kref);
 rpc_init_pipe_dir_object(&p->pdo,
   &gss_pipe_dir_object_ops,
   p);
 return p;
err_free_gss_pipe:
 kfree(p);
err:
 return ERR_PTR(err);
}
