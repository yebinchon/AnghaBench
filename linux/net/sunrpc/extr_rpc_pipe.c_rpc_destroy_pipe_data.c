
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_pipe {int dummy; } ;


 int kfree (struct rpc_pipe*) ;

void rpc_destroy_pipe_data(struct rpc_pipe *pipe)
{
 kfree(pipe);
}
