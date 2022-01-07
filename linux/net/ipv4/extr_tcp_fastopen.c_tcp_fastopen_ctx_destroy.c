
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_fastopen_context {int rcu; } ;
struct TYPE_2__ {int tcp_fastopen_ctx_lock; int tcp_fastopen_ctx; } ;
struct net {TYPE_1__ ipv4; } ;


 int call_rcu (int *,int ) ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,int *) ;
 struct tcp_fastopen_context* rcu_dereference_protected (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tcp_fastopen_ctx_free ;

void tcp_fastopen_ctx_destroy(struct net *net)
{
 struct tcp_fastopen_context *ctxt;

 spin_lock(&net->ipv4.tcp_fastopen_ctx_lock);

 ctxt = rcu_dereference_protected(net->ipv4.tcp_fastopen_ctx,
    lockdep_is_held(&net->ipv4.tcp_fastopen_ctx_lock));
 rcu_assign_pointer(net->ipv4.tcp_fastopen_ctx, ((void*)0));
 spin_unlock(&net->ipv4.tcp_fastopen_ctx_lock);

 if (ctxt)
  call_rcu(&ctxt->rcu, tcp_fastopen_ctx_free);
}
