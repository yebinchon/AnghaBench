
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_sw_context_tx {struct tls_rec* open_rec; } ;
struct sk_msg {int dummy; } ;
struct tls_rec {struct sk_msg msg_encrypted; } ;
struct tls_context {int dummy; } ;
struct sock {int dummy; } ;


 int sk_msg_alloc (struct sock*,struct sk_msg*,int,int ) ;
 struct tls_context* tls_get_ctx (struct sock*) ;
 struct tls_sw_context_tx* tls_sw_ctx_tx (struct tls_context*) ;

__attribute__((used)) static int tls_alloc_encrypted_msg(struct sock *sk, int len)
{
 struct tls_context *tls_ctx = tls_get_ctx(sk);
 struct tls_sw_context_tx *ctx = tls_sw_ctx_tx(tls_ctx);
 struct tls_rec *rec = ctx->open_rec;
 struct sk_msg *msg_en = &rec->msg_encrypted;

 return sk_msg_alloc(sk, msg_en, len, 0);
}
