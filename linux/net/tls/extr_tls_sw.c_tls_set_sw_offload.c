
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_7__ {struct sock* sk; int work; } ;
struct tls_sw_context_tx {int async_capable; int strp; struct crypto_aead* aead_recv; int rx_list; int async_wait; TYPE_3__ tx_work; int tx_list; struct crypto_aead* aead_send; } ;
struct tls_sw_context_rx {int async_capable; int strp; struct crypto_aead* aead_recv; int rx_list; int async_wait; TYPE_3__ tx_work; int tx_list; struct crypto_aead* aead_send; } ;
struct tls_prot_info {int tail_size; scalar_t__ version; int cipher_type; scalar_t__ tag_size; scalar_t__ rec_seq_size; scalar_t__ salt_size; scalar_t__ iv_size; scalar_t__ prepend_size; scalar_t__ overhead_size; scalar_t__ aad_size; } ;
struct tls_crypto_info {int cipher_type; scalar_t__ version; } ;
struct cipher_context {struct tls_sw_context_tx* iv; struct tls_sw_context_tx* rec_seq; } ;
struct TYPE_8__ {struct tls_crypto_info info; } ;
struct TYPE_6__ {struct tls_crypto_info info; } ;
struct tls_context {struct tls_sw_context_tx* priv_ctx_rx; struct tls_sw_context_tx* priv_ctx_tx; int push_pending_record; struct cipher_context rx; TYPE_4__ crypto_recv; struct cipher_context tx; TYPE_2__ crypto_send; struct tls_prot_info prot_info; } ;
struct tls12_crypto_info_aes_gcm_256 {char* iv; char* rec_seq; char* key; char* salt; } ;
struct tls12_crypto_info_aes_gcm_128 {char* iv; char* rec_seq; char* key; char* salt; } ;
struct tls12_crypto_info_aes_ccm_128 {char* iv; char* rec_seq; char* key; char* salt; } ;
struct strp_callbacks {int parse_msg; int rcv_msg; } ;
struct sock {int dummy; } ;
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct crypto_aead {int dummy; } ;
typedef int cb ;
struct TYPE_5__ {int cra_flags; } ;


 int CRYPTO_ALG_ASYNC ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct crypto_aead*) ;
 scalar_t__ MAX_IV_SIZE ;
 int PTR_ERR (struct crypto_aead*) ;
 scalar_t__ TLS_1_3_VERSION ;
 scalar_t__ TLS_AAD_SPACE_SIZE ;

 scalar_t__ TLS_CIPHER_AES_CCM_128_IV_SIZE ;
 size_t TLS_CIPHER_AES_CCM_128_KEY_SIZE ;
 scalar_t__ TLS_CIPHER_AES_CCM_128_REC_SEQ_SIZE ;
 scalar_t__ TLS_CIPHER_AES_CCM_128_SALT_SIZE ;
 scalar_t__ TLS_CIPHER_AES_CCM_128_TAG_SIZE ;

 scalar_t__ TLS_CIPHER_AES_GCM_128_IV_SIZE ;
 size_t TLS_CIPHER_AES_GCM_128_KEY_SIZE ;
 scalar_t__ TLS_CIPHER_AES_GCM_128_REC_SEQ_SIZE ;
 scalar_t__ TLS_CIPHER_AES_GCM_128_SALT_SIZE ;
 scalar_t__ TLS_CIPHER_AES_GCM_128_TAG_SIZE ;

 scalar_t__ TLS_CIPHER_AES_GCM_256_IV_SIZE ;
 size_t TLS_CIPHER_AES_GCM_256_KEY_SIZE ;
 scalar_t__ TLS_CIPHER_AES_GCM_256_REC_SEQ_SIZE ;
 scalar_t__ TLS_CIPHER_AES_GCM_256_SALT_SIZE ;
 scalar_t__ TLS_CIPHER_AES_GCM_256_TAG_SIZE ;
 scalar_t__ TLS_HEADER_SIZE ;
 scalar_t__ TLS_MAX_REC_SEQ_SIZE ;
 int crypto_aead_setauthsize (struct crypto_aead*,scalar_t__) ;
 int crypto_aead_setkey (struct crypto_aead*,char*,size_t) ;
 struct crypto_tfm* crypto_aead_tfm (struct crypto_aead*) ;
 struct crypto_aead* crypto_alloc_aead (char*,int ,int ) ;
 int crypto_free_aead (struct crypto_aead*) ;
 int crypto_init_wait (int *) ;
 int kfree (struct tls_sw_context_tx*) ;
 struct tls_sw_context_tx* kmalloc (scalar_t__,int ) ;
 struct tls_sw_context_tx* kmemdup (char*,scalar_t__,int ) ;
 void* kzalloc (int,int ) ;
 int memcpy (struct tls_sw_context_tx*,char*,scalar_t__) ;
 int memset (struct strp_callbacks*,int ,int) ;
 int skb_queue_head_init (int *) ;
 int strp_init (int *,struct sock*,struct strp_callbacks*) ;
 struct tls_context* tls_get_ctx (struct sock*) ;
 int tls_queue ;
 int tls_read_size ;
 int tls_sw_push_pending_record ;
 int tx_work_handler ;

int tls_set_sw_offload(struct sock *sk, struct tls_context *ctx, int tx)
{
 struct tls_context *tls_ctx = tls_get_ctx(sk);
 struct tls_prot_info *prot = &tls_ctx->prot_info;
 struct tls_crypto_info *crypto_info;
 struct tls12_crypto_info_aes_gcm_128 *gcm_128_info;
 struct tls12_crypto_info_aes_gcm_256 *gcm_256_info;
 struct tls12_crypto_info_aes_ccm_128 *ccm_128_info;
 struct tls_sw_context_tx *sw_ctx_tx = ((void*)0);
 struct tls_sw_context_rx *sw_ctx_rx = ((void*)0);
 struct cipher_context *cctx;
 struct crypto_aead **aead;
 struct strp_callbacks cb;
 u16 nonce_size, tag_size, iv_size, rec_seq_size, salt_size;
 struct crypto_tfm *tfm;
 char *iv, *rec_seq, *key, *salt, *cipher_name;
 size_t keysize;
 int rc = 0;

 if (!ctx) {
  rc = -EINVAL;
  goto out;
 }

 if (tx) {
  if (!ctx->priv_ctx_tx) {
   sw_ctx_tx = kzalloc(sizeof(*sw_ctx_tx), GFP_KERNEL);
   if (!sw_ctx_tx) {
    rc = -ENOMEM;
    goto out;
   }
   ctx->priv_ctx_tx = sw_ctx_tx;
  } else {
   sw_ctx_tx =
    (struct tls_sw_context_tx *)ctx->priv_ctx_tx;
  }
 } else {
  if (!ctx->priv_ctx_rx) {
   sw_ctx_rx = kzalloc(sizeof(*sw_ctx_rx), GFP_KERNEL);
   if (!sw_ctx_rx) {
    rc = -ENOMEM;
    goto out;
   }
   ctx->priv_ctx_rx = sw_ctx_rx;
  } else {
   sw_ctx_rx =
    (struct tls_sw_context_rx *)ctx->priv_ctx_rx;
  }
 }

 if (tx) {
  crypto_init_wait(&sw_ctx_tx->async_wait);
  crypto_info = &ctx->crypto_send.info;
  cctx = &ctx->tx;
  aead = &sw_ctx_tx->aead_send;
  INIT_LIST_HEAD(&sw_ctx_tx->tx_list);
  INIT_DELAYED_WORK(&sw_ctx_tx->tx_work.work, tx_work_handler);
  sw_ctx_tx->tx_work.sk = sk;
 } else {
  crypto_init_wait(&sw_ctx_rx->async_wait);
  crypto_info = &ctx->crypto_recv.info;
  cctx = &ctx->rx;
  skb_queue_head_init(&sw_ctx_rx->rx_list);
  aead = &sw_ctx_rx->aead_recv;
 }

 switch (crypto_info->cipher_type) {
 case 129: {
  nonce_size = TLS_CIPHER_AES_GCM_128_IV_SIZE;
  tag_size = TLS_CIPHER_AES_GCM_128_TAG_SIZE;
  iv_size = TLS_CIPHER_AES_GCM_128_IV_SIZE;
  iv = ((struct tls12_crypto_info_aes_gcm_128 *)crypto_info)->iv;
  rec_seq_size = TLS_CIPHER_AES_GCM_128_REC_SEQ_SIZE;
  rec_seq =
   ((struct tls12_crypto_info_aes_gcm_128 *)crypto_info)->rec_seq;
  gcm_128_info =
   (struct tls12_crypto_info_aes_gcm_128 *)crypto_info;
  keysize = TLS_CIPHER_AES_GCM_128_KEY_SIZE;
  key = gcm_128_info->key;
  salt = gcm_128_info->salt;
  salt_size = TLS_CIPHER_AES_GCM_128_SALT_SIZE;
  cipher_name = "gcm(aes)";
  break;
 }
 case 128: {
  nonce_size = TLS_CIPHER_AES_GCM_256_IV_SIZE;
  tag_size = TLS_CIPHER_AES_GCM_256_TAG_SIZE;
  iv_size = TLS_CIPHER_AES_GCM_256_IV_SIZE;
  iv = ((struct tls12_crypto_info_aes_gcm_256 *)crypto_info)->iv;
  rec_seq_size = TLS_CIPHER_AES_GCM_256_REC_SEQ_SIZE;
  rec_seq =
   ((struct tls12_crypto_info_aes_gcm_256 *)crypto_info)->rec_seq;
  gcm_256_info =
   (struct tls12_crypto_info_aes_gcm_256 *)crypto_info;
  keysize = TLS_CIPHER_AES_GCM_256_KEY_SIZE;
  key = gcm_256_info->key;
  salt = gcm_256_info->salt;
  salt_size = TLS_CIPHER_AES_GCM_256_SALT_SIZE;
  cipher_name = "gcm(aes)";
  break;
 }
 case 130: {
  nonce_size = TLS_CIPHER_AES_CCM_128_IV_SIZE;
  tag_size = TLS_CIPHER_AES_CCM_128_TAG_SIZE;
  iv_size = TLS_CIPHER_AES_CCM_128_IV_SIZE;
  iv = ((struct tls12_crypto_info_aes_ccm_128 *)crypto_info)->iv;
  rec_seq_size = TLS_CIPHER_AES_CCM_128_REC_SEQ_SIZE;
  rec_seq =
  ((struct tls12_crypto_info_aes_ccm_128 *)crypto_info)->rec_seq;
  ccm_128_info =
  (struct tls12_crypto_info_aes_ccm_128 *)crypto_info;
  keysize = TLS_CIPHER_AES_CCM_128_KEY_SIZE;
  key = ccm_128_info->key;
  salt = ccm_128_info->salt;
  salt_size = TLS_CIPHER_AES_CCM_128_SALT_SIZE;
  cipher_name = "ccm(aes)";
  break;
 }
 default:
  rc = -EINVAL;
  goto free_priv;
 }


 if (iv_size > MAX_IV_SIZE || nonce_size > MAX_IV_SIZE ||
     rec_seq_size > TLS_MAX_REC_SEQ_SIZE) {
  rc = -EINVAL;
  goto free_priv;
 }

 if (crypto_info->version == TLS_1_3_VERSION) {
  nonce_size = 0;
  prot->aad_size = TLS_HEADER_SIZE;
  prot->tail_size = 1;
 } else {
  prot->aad_size = TLS_AAD_SPACE_SIZE;
  prot->tail_size = 0;
 }

 prot->version = crypto_info->version;
 prot->cipher_type = crypto_info->cipher_type;
 prot->prepend_size = TLS_HEADER_SIZE + nonce_size;
 prot->tag_size = tag_size;
 prot->overhead_size = prot->prepend_size +
         prot->tag_size + prot->tail_size;
 prot->iv_size = iv_size;
 prot->salt_size = salt_size;
 cctx->iv = kmalloc(iv_size + salt_size, GFP_KERNEL);
 if (!cctx->iv) {
  rc = -ENOMEM;
  goto free_priv;
 }

 prot->rec_seq_size = rec_seq_size;
 memcpy(cctx->iv, salt, salt_size);
 memcpy(cctx->iv + salt_size, iv, iv_size);
 cctx->rec_seq = kmemdup(rec_seq, rec_seq_size, GFP_KERNEL);
 if (!cctx->rec_seq) {
  rc = -ENOMEM;
  goto free_iv;
 }

 if (!*aead) {
  *aead = crypto_alloc_aead(cipher_name, 0, 0);
  if (IS_ERR(*aead)) {
   rc = PTR_ERR(*aead);
   *aead = ((void*)0);
   goto free_rec_seq;
  }
 }

 ctx->push_pending_record = tls_sw_push_pending_record;

 rc = crypto_aead_setkey(*aead, key, keysize);

 if (rc)
  goto free_aead;

 rc = crypto_aead_setauthsize(*aead, prot->tag_size);
 if (rc)
  goto free_aead;

 if (sw_ctx_rx) {
  tfm = crypto_aead_tfm(sw_ctx_rx->aead_recv);

  if (crypto_info->version == TLS_1_3_VERSION)
   sw_ctx_rx->async_capable = 0;
  else
   sw_ctx_rx->async_capable =
    tfm->__crt_alg->cra_flags & CRYPTO_ALG_ASYNC;


  memset(&cb, 0, sizeof(cb));
  cb.rcv_msg = tls_queue;
  cb.parse_msg = tls_read_size;

  strp_init(&sw_ctx_rx->strp, sk, &cb);
 }

 goto out;

free_aead:
 crypto_free_aead(*aead);
 *aead = ((void*)0);
free_rec_seq:
 kfree(cctx->rec_seq);
 cctx->rec_seq = ((void*)0);
free_iv:
 kfree(cctx->iv);
 cctx->iv = ((void*)0);
free_priv:
 if (tx) {
  kfree(ctx->priv_ctx_tx);
  ctx->priv_ctx_tx = ((void*)0);
 } else {
  kfree(ctx->priv_ctx_rx);
  ctx->priv_ctx_rx = ((void*)0);
 }
out:
 return rc;
}
