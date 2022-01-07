
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zero_nonce ;
typedef int u8 ;
struct big_key_buf {int sg; } ;
struct aead_request {int dummy; } ;
typedef enum big_key_op { ____Placeholder_big_key_op } big_key_op ;


 int BIG_KEY_ENC ;
 int BIG_KEY_IV_SIZE ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int EAGAIN ;
 int ENC_KEY_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct aead_request* aead_request_alloc (int ,int ) ;
 int aead_request_free (struct aead_request*) ;
 int aead_request_set_ad (struct aead_request*,int ) ;
 int aead_request_set_callback (struct aead_request*,int ,int *,int *) ;
 int aead_request_set_crypt (struct aead_request*,int ,int ,size_t,int *) ;
 int big_key_aead ;
 int big_key_aead_lock ;
 int crypto_aead_decrypt (struct aead_request*) ;
 int crypto_aead_encrypt (struct aead_request*) ;
 scalar_t__ crypto_aead_setkey (int ,int *,int ) ;
 int memset (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int big_key_crypt(enum big_key_op op, struct big_key_buf *buf, size_t datalen, u8 *key)
{
 int ret;
 struct aead_request *aead_req;






 u8 zero_nonce[BIG_KEY_IV_SIZE];

 aead_req = aead_request_alloc(big_key_aead, GFP_KERNEL);
 if (!aead_req)
  return -ENOMEM;

 memset(zero_nonce, 0, sizeof(zero_nonce));
 aead_request_set_crypt(aead_req, buf->sg, buf->sg, datalen, zero_nonce);
 aead_request_set_callback(aead_req, CRYPTO_TFM_REQ_MAY_SLEEP, ((void*)0), ((void*)0));
 aead_request_set_ad(aead_req, 0);

 mutex_lock(&big_key_aead_lock);
 if (crypto_aead_setkey(big_key_aead, key, ENC_KEY_SIZE)) {
  ret = -EAGAIN;
  goto error;
 }
 if (op == BIG_KEY_ENC)
  ret = crypto_aead_encrypt(aead_req);
 else
  ret = crypto_aead_decrypt(aead_req);
error:
 mutex_unlock(&big_key_aead_lock);
 aead_request_free(aead_req);
 return ret;
}
