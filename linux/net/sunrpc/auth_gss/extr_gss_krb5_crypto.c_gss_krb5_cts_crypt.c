
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct xdr_buf {int len; struct page** pages; } ;
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;
struct crypto_sync_skcipher {int dummy; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int GSS_KRB5_MAX_BLOCKSIZE ;
 int SYNC_SKCIPHER_REQUEST_ON_STACK (int ,struct crypto_sync_skcipher*) ;
 int WARN_ON (int ) ;
 int crypto_skcipher_decrypt (int ) ;
 int crypto_skcipher_encrypt (int ) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int read_bytes_from_xdr_buf (struct xdr_buf*,int,int *,int) ;
 int req ;
 int sg_init_one (struct scatterlist*,int *,int) ;
 int skcipher_request_set_callback (int ,int ,int *,int *) ;
 int skcipher_request_set_crypt (int ,struct scatterlist*,struct scatterlist*,int,int *) ;
 int skcipher_request_set_sync_tfm (int ,struct crypto_sync_skcipher*) ;
 int skcipher_request_zero (int ) ;
 int write_bytes_to_xdr_buf (struct xdr_buf*,int,int *,int) ;

__attribute__((used)) static u32
gss_krb5_cts_crypt(struct crypto_sync_skcipher *cipher, struct xdr_buf *buf,
     u32 offset, u8 *iv, struct page **pages, int encrypt)
{
 u32 ret;
 struct scatterlist sg[1];
 SYNC_SKCIPHER_REQUEST_ON_STACK(req, cipher);
 u8 *data;
 struct page **save_pages;
 u32 len = buf->len - offset;

 if (len > GSS_KRB5_MAX_BLOCKSIZE * 2) {
  WARN_ON(0);
  return -ENOMEM;
 }
 data = kmalloc(GSS_KRB5_MAX_BLOCKSIZE * 2, GFP_NOFS);
 if (!data)
  return -ENOMEM;






 save_pages = buf->pages;
 if (encrypt)
  buf->pages = pages;

 ret = read_bytes_from_xdr_buf(buf, offset, data, len);
 buf->pages = save_pages;
 if (ret)
  goto out;

 sg_init_one(sg, data, len);

 skcipher_request_set_sync_tfm(req, cipher);
 skcipher_request_set_callback(req, 0, ((void*)0), ((void*)0));
 skcipher_request_set_crypt(req, sg, sg, len, iv);

 if (encrypt)
  ret = crypto_skcipher_encrypt(req);
 else
  ret = crypto_skcipher_decrypt(req);

 skcipher_request_zero(req);

 if (ret)
  goto out;

 ret = write_bytes_to_xdr_buf(buf, offset, data, len);

out:
 kfree(data);
 return ret;
}
