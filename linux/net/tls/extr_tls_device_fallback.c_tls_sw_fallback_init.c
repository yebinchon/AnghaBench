
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tls_offload_context_tx {int * aead_send; } ;
struct tls_crypto_info {int dummy; } ;
struct tls12_crypto_info_aes_gcm_128 {int * key; } ;
struct sock {int dummy; } ;


 int CRYPTO_ALG_ASYNC ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int TLS_CIPHER_AES_GCM_128_KEY_SIZE ;
 int TLS_CIPHER_AES_GCM_128_TAG_SIZE ;
 int crypto_aead_setauthsize (int *,int ) ;
 int crypto_aead_setkey (int *,int const*,int ) ;
 int * crypto_alloc_aead (char*,int ,int ) ;
 int crypto_free_aead (int *) ;
 int pr_err_ratelimited (char*,int) ;

int tls_sw_fallback_init(struct sock *sk,
    struct tls_offload_context_tx *offload_ctx,
    struct tls_crypto_info *crypto_info)
{
 const u8 *key;
 int rc;

 offload_ctx->aead_send =
     crypto_alloc_aead("gcm(aes)", 0, CRYPTO_ALG_ASYNC);
 if (IS_ERR(offload_ctx->aead_send)) {
  rc = PTR_ERR(offload_ctx->aead_send);
  pr_err_ratelimited("crypto_alloc_aead failed rc=%d\n", rc);
  offload_ctx->aead_send = ((void*)0);
  goto err_out;
 }

 key = ((struct tls12_crypto_info_aes_gcm_128 *)crypto_info)->key;

 rc = crypto_aead_setkey(offload_ctx->aead_send, key,
    TLS_CIPHER_AES_GCM_128_KEY_SIZE);
 if (rc)
  goto free_aead;

 rc = crypto_aead_setauthsize(offload_ctx->aead_send,
         TLS_CIPHER_AES_GCM_128_TAG_SIZE);
 if (rc)
  goto free_aead;

 return 0;
free_aead:
 crypto_free_aead(offload_ctx->aead_send);
err_out:
 return rc;
}
