
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tls_sw_context_tx {struct tls_rec* open_rec; int encrypt_pending; int tx_list; int aead_send; } ;
struct TYPE_3__ {int curr; } ;
struct sk_msg {TYPE_1__ sg; } ;
struct tls_rec {int list; int tx_ready; int * iv_data; int sg_aead_out; int sg_aead_in; struct sk_msg msg_encrypted; } ;
struct tls_prot_info {scalar_t__ cipher_type; scalar_t__ prepend_size; int aad_size; int version; scalar_t__ salt_size; scalar_t__ iv_size; } ;
struct TYPE_4__ {int rec_seq; int iv; } ;
struct tls_context {TYPE_2__ tx; struct tls_prot_info prot_info; } ;
struct sock {int dummy; } ;
struct scatterlist {int length; int offset; } ;
struct list_head {int dummy; } ;
struct aead_request {int dummy; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int EINPROGRESS ;
 int TLS_AES_CCM_IV_B0_BYTE ;
 scalar_t__ TLS_CIPHER_AES_CCM_128 ;
 int WRITE_ONCE (int ,int) ;
 int aead_request_set_ad (struct aead_request*,int ) ;
 int aead_request_set_callback (struct aead_request*,int ,int ,struct sock*) ;
 int aead_request_set_crypt (struct aead_request*,int ,int ,size_t,int *) ;
 int aead_request_set_tfm (struct aead_request*,int ) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int crypto_aead_encrypt (struct aead_request*) ;
 int list_add_tail (struct list_head*,int *) ;
 int list_del (int *) ;
 int memcpy (int *,int ,scalar_t__) ;
 struct scatterlist* sk_msg_elem (struct sk_msg*,int ) ;
 int tls_advance_record_sn (struct sock*,struct tls_prot_info*,TYPE_2__*) ;
 int tls_encrypt_done ;
 int xor_iv_with_seq (int ,int *,int ) ;

__attribute__((used)) static int tls_do_encryption(struct sock *sk,
        struct tls_context *tls_ctx,
        struct tls_sw_context_tx *ctx,
        struct aead_request *aead_req,
        size_t data_len, u32 start)
{
 struct tls_prot_info *prot = &tls_ctx->prot_info;
 struct tls_rec *rec = ctx->open_rec;
 struct sk_msg *msg_en = &rec->msg_encrypted;
 struct scatterlist *sge = sk_msg_elem(msg_en, start);
 int rc, iv_offset = 0;


 if (prot->cipher_type == TLS_CIPHER_AES_CCM_128) {
  rec->iv_data[0] = TLS_AES_CCM_IV_B0_BYTE;
  iv_offset = 1;
 }

 memcpy(&rec->iv_data[iv_offset], tls_ctx->tx.iv,
        prot->iv_size + prot->salt_size);

 xor_iv_with_seq(prot->version, rec->iv_data, tls_ctx->tx.rec_seq);

 sge->offset += prot->prepend_size;
 sge->length -= prot->prepend_size;

 msg_en->sg.curr = start;

 aead_request_set_tfm(aead_req, ctx->aead_send);
 aead_request_set_ad(aead_req, prot->aad_size);
 aead_request_set_crypt(aead_req, rec->sg_aead_in,
          rec->sg_aead_out,
          data_len, rec->iv_data);

 aead_request_set_callback(aead_req, CRYPTO_TFM_REQ_MAY_BACKLOG,
      tls_encrypt_done, sk);


 list_add_tail((struct list_head *)&rec->list, &ctx->tx_list);
 atomic_inc(&ctx->encrypt_pending);

 rc = crypto_aead_encrypt(aead_req);
 if (!rc || rc != -EINPROGRESS) {
  atomic_dec(&ctx->encrypt_pending);
  sge->offset -= prot->prepend_size;
  sge->length += prot->prepend_size;
 }

 if (!rc) {
  WRITE_ONCE(rec->tx_ready, 1);
 } else if (rc != -EINPROGRESS) {
  list_del(&rec->list);
  return rc;
 }


 ctx->open_rec = ((void*)0);
 tls_advance_record_sn(sk, prot, &tls_ctx->tx);
 return rc;
}
