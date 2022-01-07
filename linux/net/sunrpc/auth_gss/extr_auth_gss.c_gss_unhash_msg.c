
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_pipe {int lock; } ;
struct gss_upcall_msg {int list; struct rpc_pipe* pipe; } ;


 int __gss_unhash_msg (struct gss_upcall_msg*) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
gss_unhash_msg(struct gss_upcall_msg *gss_msg)
{
 struct rpc_pipe *pipe = gss_msg->pipe;

 if (list_empty(&gss_msg->list))
  return;
 spin_lock(&pipe->lock);
 if (!list_empty(&gss_msg->list))
  __gss_unhash_msg(gss_msg);
 spin_unlock(&pipe->lock);
}
