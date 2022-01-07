
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcp_fastopen_context {int rcu; } ;
struct sock {int dummy; } ;
struct TYPE_4__ {int ctx; } ;
struct TYPE_5__ {TYPE_1__ fastopenq; } ;
struct TYPE_6__ {TYPE_2__ icsk_accept_queue; } ;


 int call_rcu (int *,int ) ;
 TYPE_3__* inet_csk (struct sock*) ;
 struct tcp_fastopen_context* rcu_dereference_protected (int ,int) ;
 int tcp_fastopen_ctx_free ;

void tcp_fastopen_destroy_cipher(struct sock *sk)
{
 struct tcp_fastopen_context *ctx;

 ctx = rcu_dereference_protected(
   inet_csk(sk)->icsk_accept_queue.fastopenq.ctx, 1);
 if (ctx)
  call_rcu(&ctx->rcu, tcp_fastopen_ctx_free);
}
