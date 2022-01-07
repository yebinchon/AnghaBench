
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_sw_context_tx {int aead_send; } ;
struct sk_msg {int dummy; } ;
struct tls_rec {int * sg_aead_out; int aad_space; int * sg_aead_in; struct sk_msg msg_encrypted; struct sk_msg msg_plaintext; } ;
struct tls_prot_info {int aad_size; } ;
struct tls_context {struct tls_prot_info prot_info; } ;
struct sock {int sk_allocation; } ;


 int crypto_aead_reqsize (int ) ;
 struct tls_rec* kzalloc (int,int ) ;
 int sg_init_table (int *,int) ;
 int sg_set_buf (int *,int ,int ) ;
 int sg_unmark_end (int *) ;
 int sk_msg_init (struct sk_msg*) ;
 struct tls_context* tls_get_ctx (struct sock*) ;
 struct tls_sw_context_tx* tls_sw_ctx_tx (struct tls_context*) ;

__attribute__((used)) static struct tls_rec *tls_get_rec(struct sock *sk)
{
 struct tls_context *tls_ctx = tls_get_ctx(sk);
 struct tls_prot_info *prot = &tls_ctx->prot_info;
 struct tls_sw_context_tx *ctx = tls_sw_ctx_tx(tls_ctx);
 struct sk_msg *msg_pl, *msg_en;
 struct tls_rec *rec;
 int mem_size;

 mem_size = sizeof(struct tls_rec) + crypto_aead_reqsize(ctx->aead_send);

 rec = kzalloc(mem_size, sk->sk_allocation);
 if (!rec)
  return ((void*)0);

 msg_pl = &rec->msg_plaintext;
 msg_en = &rec->msg_encrypted;

 sk_msg_init(msg_pl);
 sk_msg_init(msg_en);

 sg_init_table(rec->sg_aead_in, 2);
 sg_set_buf(&rec->sg_aead_in[0], rec->aad_space, prot->aad_size);
 sg_unmark_end(&rec->sg_aead_in[1]);

 sg_init_table(rec->sg_aead_out, 2);
 sg_set_buf(&rec->sg_aead_out[0], rec->aad_space, prot->aad_size);
 sg_unmark_end(&rec->sg_aead_out[1]);

 return rec;
}
