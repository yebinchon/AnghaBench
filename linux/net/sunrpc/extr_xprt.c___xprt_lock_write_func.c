
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {struct rpc_task* snd_task; } ;
struct rpc_task {int dummy; } ;



__attribute__((used)) static bool __xprt_lock_write_func(struct rpc_task *task, void *data)
{
 struct rpc_xprt *xprt = data;

 xprt->snd_task = task;
 return 1;
}
