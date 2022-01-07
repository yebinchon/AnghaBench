
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_sw_context_rx {int decrypted; int (* saved_data_ready ) (int ) ;struct sk_buff* recv_pkt; } ;
struct tls_context {int dummy; } ;
struct strparser {int sk; } ;
struct sk_buff {int dummy; } ;


 int strp_pause (struct strparser*) ;
 int stub1 (int ) ;
 struct tls_context* tls_get_ctx (int ) ;
 struct tls_sw_context_rx* tls_sw_ctx_rx (struct tls_context*) ;

__attribute__((used)) static void tls_queue(struct strparser *strp, struct sk_buff *skb)
{
 struct tls_context *tls_ctx = tls_get_ctx(strp->sk);
 struct tls_sw_context_rx *ctx = tls_sw_ctx_rx(tls_ctx);

 ctx->decrypted = 0;

 ctx->recv_pkt = skb;
 strp_pause(strp);

 ctx->saved_data_ready(strp->sk);
}
