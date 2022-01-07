
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_sw_context_tx {struct tls_rec* open_rec; } ;
struct tls_rec {int msg_encrypted; int msg_plaintext; } ;
struct tls_prot_info {scalar_t__ overhead_size; } ;
struct tls_context {struct tls_prot_info prot_info; } ;
struct sock {int dummy; } ;


 int sk_msg_trim (struct sock*,int *,int) ;
 struct tls_context* tls_get_ctx (struct sock*) ;
 struct tls_sw_context_tx* tls_sw_ctx_tx (struct tls_context*) ;

__attribute__((used)) static void tls_trim_both_msgs(struct sock *sk, int target_size)
{
 struct tls_context *tls_ctx = tls_get_ctx(sk);
 struct tls_prot_info *prot = &tls_ctx->prot_info;
 struct tls_sw_context_tx *ctx = tls_sw_ctx_tx(tls_ctx);
 struct tls_rec *rec = ctx->open_rec;

 sk_msg_trim(sk, &rec->msg_plaintext, target_size);
 if (target_size > 0)
  target_size += prot->overhead_size;
 sk_msg_trim(sk, &rec->msg_encrypted, target_size);
}
