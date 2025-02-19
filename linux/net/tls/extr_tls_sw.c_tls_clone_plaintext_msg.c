
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tls_sw_context_tx {struct tls_rec* open_rec; } ;
struct TYPE_2__ {int size; } ;
struct sk_msg {TYPE_1__ sg; } ;
struct tls_rec {struct sk_msg msg_encrypted; struct sk_msg msg_plaintext; } ;
struct tls_prot_info {int prepend_size; } ;
struct tls_context {struct tls_prot_info prot_info; } ;
struct sock {int dummy; } ;


 int sk_msg_clone (struct sock*,struct sk_msg*,struct sk_msg*,int,int) ;
 struct tls_context* tls_get_ctx (struct sock*) ;
 struct tls_sw_context_tx* tls_sw_ctx_tx (struct tls_context*) ;

__attribute__((used)) static int tls_clone_plaintext_msg(struct sock *sk, int required)
{
 struct tls_context *tls_ctx = tls_get_ctx(sk);
 struct tls_prot_info *prot = &tls_ctx->prot_info;
 struct tls_sw_context_tx *ctx = tls_sw_ctx_tx(tls_ctx);
 struct tls_rec *rec = ctx->open_rec;
 struct sk_msg *msg_pl = &rec->msg_plaintext;
 struct sk_msg *msg_en = &rec->msg_encrypted;
 int skip, len;





 len = required - msg_pl->sg.size;




 skip = prot->prepend_size + msg_pl->sg.size;

 return sk_msg_clone(sk, msg_pl, msg_en, skip, len);
}
