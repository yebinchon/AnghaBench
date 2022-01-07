
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_pipe {int lock; int in_downcall; } ;
struct gss_upcall_msg {int list; int count; int auth; int uid; struct rpc_pipe* pipe; } ;


 struct gss_upcall_msg* __gss_find_upcall (struct rpc_pipe*,int ,int ) ;
 int list_add (int *,int *) ;
 int refcount_inc (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline struct gss_upcall_msg *
gss_add_msg(struct gss_upcall_msg *gss_msg)
{
 struct rpc_pipe *pipe = gss_msg->pipe;
 struct gss_upcall_msg *old;

 spin_lock(&pipe->lock);
 old = __gss_find_upcall(pipe, gss_msg->uid, gss_msg->auth);
 if (old == ((void*)0)) {
  refcount_inc(&gss_msg->count);
  list_add(&gss_msg->list, &pipe->in_downcall);
 } else
  gss_msg = old;
 spin_unlock(&pipe->lock);
 return gss_msg;
}
