
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u32 ;
struct krb5_ctx {scalar_t__ enctype; struct crypto_sync_skcipher* seq; } ;
struct crypto_sync_skcipher {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ ENCTYPE_ARCFOUR_HMAC ;
 scalar_t__ ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ KG_BAD_SEQ ;
 int dprintk (char*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 scalar_t__ krb5_decrypt (struct crypto_sync_skcipher*,unsigned char*,unsigned char*,unsigned char*,int) ;
 scalar_t__ krb5_get_rc4_seq_num (struct krb5_ctx*,unsigned char*,unsigned char*,int*,unsigned char*) ;

s32
krb5_get_seq_num(struct krb5_ctx *kctx,
        unsigned char *cksum,
        unsigned char *buf,
        int *direction, u32 *seqnum)
{
 s32 code;
 unsigned char *plain;
 struct crypto_sync_skcipher *key = kctx->seq;

 dprintk("RPC:       krb5_get_seq_num:\n");

 if (kctx->enctype == ENCTYPE_ARCFOUR_HMAC)
  return krb5_get_rc4_seq_num(kctx, cksum, buf,
         direction, seqnum);
 plain = kmalloc(8, GFP_NOFS);
 if (!plain)
  return -ENOMEM;

 if ((code = krb5_decrypt(key, cksum, buf, plain, 8)))
  goto out;

 if ((plain[4] != plain[5]) || (plain[4] != plain[6]) ||
     (plain[4] != plain[7])) {
  code = (s32)KG_BAD_SEQ;
  goto out;
 }

 *direction = plain[4];

 *seqnum = ((plain[0]) |
     (plain[1] << 8) | (plain[2] << 16) | (plain[3] << 24));

out:
 kfree(plain);
 return code;
}
