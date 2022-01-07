
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct gss_upcall_msg {int service_name; TYPE_1__* auth; int rpc_waitqueue; int * ctx; int list; int count; } ;
struct TYPE_2__ {struct net* net; } ;


 int BUG_ON (int) ;
 int gss_put_auth (TYPE_1__*) ;
 int gss_put_ctx (int *) ;
 int kfree (struct gss_upcall_msg*) ;
 int kfree_const (int ) ;
 int list_empty (int *) ;
 int put_pipe_version (struct net*) ;
 int refcount_dec_and_test (int *) ;
 int rpc_destroy_wait_queue (int *) ;

__attribute__((used)) static void
gss_release_msg(struct gss_upcall_msg *gss_msg)
{
 struct net *net = gss_msg->auth->net;
 if (!refcount_dec_and_test(&gss_msg->count))
  return;
 put_pipe_version(net);
 BUG_ON(!list_empty(&gss_msg->list));
 if (gss_msg->ctx != ((void*)0))
  gss_put_ctx(gss_msg->ctx);
 rpc_destroy_wait_queue(&gss_msg->rpc_waitqueue);
 gss_put_auth(gss_msg->auth);
 kfree_const(gss_msg->service_name);
 kfree(gss_msg);
}
