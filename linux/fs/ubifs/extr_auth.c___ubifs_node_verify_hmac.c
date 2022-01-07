
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ubifs_info {int hmac_desc_len; } ;


 int ENOMEM ;
 int EPERM ;
 int GFP_NOFS ;
 int crypto_memneq (int *,void const*,int) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int ubifs_node_calc_hmac (struct ubifs_info const*,void const*,int,int,int *) ;

int __ubifs_node_verify_hmac(const struct ubifs_info *c, const void *node,
        int len, int ofs_hmac)
{
 int hmac_len = c->hmac_desc_len;
 u8 *hmac;
 int err;

 hmac = kmalloc(hmac_len, GFP_NOFS);
 if (!hmac)
  return -ENOMEM;

 err = ubifs_node_calc_hmac(c, node, len, ofs_hmac, hmac);
 if (err) {
  kfree(hmac);
  return err;
 }

 err = crypto_memneq(hmac, node + ofs_hmac, hmac_len);

 kfree(hmac);

 if (!err)
  return 0;

 return -EPERM;
}
