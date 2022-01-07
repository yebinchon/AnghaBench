
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct ecdh {int key_size; int * key; int curve_id; int member_0; } ;
struct crypto_kpp {int dummy; } ;


 int ECC_CURVE_NIST_P256 ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int crypto_ecdh_encode_key (int *,unsigned int,struct ecdh*) ;
 unsigned int crypto_ecdh_key_len (struct ecdh*) ;
 int crypto_kpp_set_secret (struct crypto_kpp*,int *,unsigned int) ;
 int * kmalloc (unsigned int,int ) ;
 int kzfree (int *) ;
 int swap_digits (int *,int *,int) ;

int set_ecdh_privkey(struct crypto_kpp *tfm, const u8 private_key[32])
{
 u8 *buf, *tmp = ((void*)0);
 unsigned int buf_len;
 int err;
 struct ecdh p = {0};

 p.curve_id = ECC_CURVE_NIST_P256;

 if (private_key) {
  tmp = kmalloc(32, GFP_KERNEL);
  if (!tmp)
   return -ENOMEM;
  swap_digits((u64 *)private_key, (u64 *)tmp, 4);
  p.key = tmp;
  p.key_size = 32;
 }

 buf_len = crypto_ecdh_key_len(&p);
 buf = kmalloc(buf_len, GFP_KERNEL);
 if (!buf) {
  err = -ENOMEM;
  goto free_tmp;
 }

 err = crypto_ecdh_encode_key(buf, buf_len, &p);
 if (err)
  goto free_all;

 err = crypto_kpp_set_secret(tfm, buf, buf_len);

free_all:
 kzfree(buf);
free_tmp:
 kzfree(tmp);
 return err;
}
