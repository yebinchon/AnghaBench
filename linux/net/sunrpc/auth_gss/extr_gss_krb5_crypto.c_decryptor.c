
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; scalar_t__ offset; } ;
struct decryptor_desc {int fraglen; int fragno; int * frags; int req; int iv; } ;
struct crypto_sync_skcipher {int dummy; } ;


 int BUG_ON (int) ;
 int crypto_skcipher_decrypt (int ) ;
 int crypto_sync_skcipher_blocksize (struct crypto_sync_skcipher*) ;
 struct crypto_sync_skcipher* crypto_sync_skcipher_reqtfm (int ) ;
 int sg_init_table (int *,int) ;
 int sg_mark_end (int *) ;
 int sg_page (struct scatterlist*) ;
 int sg_set_page (int *,int ,int,scalar_t__) ;
 int skcipher_request_set_crypt (int ,int *,int *,int,int ) ;

__attribute__((used)) static int
decryptor(struct scatterlist *sg, void *data)
{
 struct decryptor_desc *desc = data;
 int thislen = desc->fraglen + sg->length;
 struct crypto_sync_skcipher *tfm =
  crypto_sync_skcipher_reqtfm(desc->req);
 int fraglen, ret;



 BUG_ON(desc->fragno > 3);
 sg_set_page(&desc->frags[desc->fragno], sg_page(sg), sg->length,
      sg->offset);
 desc->fragno++;
 desc->fraglen += sg->length;

 fraglen = thislen & (crypto_sync_skcipher_blocksize(tfm) - 1);
 thislen -= fraglen;

 if (thislen == 0)
  return 0;

 sg_mark_end(&desc->frags[desc->fragno - 1]);

 skcipher_request_set_crypt(desc->req, desc->frags, desc->frags,
       thislen, desc->iv);

 ret = crypto_skcipher_decrypt(desc->req);
 if (ret)
  return ret;

 sg_init_table(desc->frags, 4);

 if (fraglen) {
  sg_set_page(&desc->frags[0], sg_page(sg), fraglen,
    sg->offset + sg->length - fraglen);
  desc->fragno = 1;
  desc->fraglen = fraglen;
 } else {
  desc->fragno = 0;
  desc->fraglen = 0;
 }
 return 0;
}
