
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_buf {int len; } ;
struct page {int dummy; } ;
struct encryptor_desc {int pos; int outfrags; int infrags; scalar_t__ fraglen; scalar_t__ fragno; struct page** pages; struct xdr_buf* outbuf; int req; int iv; } ;
struct crypto_sync_skcipher {int dummy; } ;


 int BUG_ON (int) ;
 int SYNC_SKCIPHER_REQUEST_ON_STACK (int ,struct crypto_sync_skcipher*) ;
 int crypto_sync_skcipher_blocksize (struct crypto_sync_skcipher*) ;
 int encryptor ;
 int memset (int ,int ,int) ;
 int req ;
 int sg_init_table (int ,int) ;
 int skcipher_request_set_callback (int ,int ,int *,int *) ;
 int skcipher_request_set_sync_tfm (int ,struct crypto_sync_skcipher*) ;
 int skcipher_request_zero (int ) ;
 int xdr_process_buf (struct xdr_buf*,int,int,int ,struct encryptor_desc*) ;

int
gss_encrypt_xdr_buf(struct crypto_sync_skcipher *tfm, struct xdr_buf *buf,
      int offset, struct page **pages)
{
 int ret;
 struct encryptor_desc desc;
 SYNC_SKCIPHER_REQUEST_ON_STACK(req, tfm);

 BUG_ON((buf->len - offset) % crypto_sync_skcipher_blocksize(tfm) != 0);

 skcipher_request_set_sync_tfm(req, tfm);
 skcipher_request_set_callback(req, 0, ((void*)0), ((void*)0));

 memset(desc.iv, 0, sizeof(desc.iv));
 desc.req = req;
 desc.pos = offset;
 desc.outbuf = buf;
 desc.pages = pages;
 desc.fragno = 0;
 desc.fraglen = 0;

 sg_init_table(desc.infrags, 4);
 sg_init_table(desc.outfrags, 4);

 ret = xdr_process_buf(buf, offset, buf->len - offset, encryptor, &desc);
 skcipher_request_zero(req);
 return ret;
}
