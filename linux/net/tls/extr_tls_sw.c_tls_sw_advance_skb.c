
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_sw_context_rx {int strp; int * recv_pkt; } ;
struct tls_context {int dummy; } ;
struct strp_msg {unsigned int full_len; unsigned int offset; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int __strp_unpause (int *) ;
 int consume_skb (struct sk_buff*) ;
 struct strp_msg* strp_msg (struct sk_buff*) ;
 struct tls_context* tls_get_ctx (struct sock*) ;
 struct tls_sw_context_rx* tls_sw_ctx_rx (struct tls_context*) ;

__attribute__((used)) static bool tls_sw_advance_skb(struct sock *sk, struct sk_buff *skb,
          unsigned int len)
{
 struct tls_context *tls_ctx = tls_get_ctx(sk);
 struct tls_sw_context_rx *ctx = tls_sw_ctx_rx(tls_ctx);

 if (skb) {
  struct strp_msg *rxm = strp_msg(skb);

  if (len < rxm->full_len) {
   rxm->offset += len;
   rxm->full_len -= len;
   return 0;
  }
  consume_skb(skb);
 }


 ctx->recv_pkt = ((void*)0);
 __strp_unpause(&ctx->strp);

 return 1;
}
