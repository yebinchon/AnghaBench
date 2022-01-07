
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_pipe_ops {int dummy; } ;
struct rpc_pipe {int flags; struct rpc_pipe_ops const* ops; } ;


 int ENOMEM ;
 struct rpc_pipe* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int init_pipe (struct rpc_pipe*) ;
 struct rpc_pipe* kzalloc (int,int ) ;

struct rpc_pipe *rpc_mkpipe_data(const struct rpc_pipe_ops *ops, int flags)
{
 struct rpc_pipe *pipe;

 pipe = kzalloc(sizeof(struct rpc_pipe), GFP_KERNEL);
 if (!pipe)
  return ERR_PTR(-ENOMEM);
 init_pipe(pipe);
 pipe->ops = ops;
 pipe->flags = flags;
 return pipe;
}
