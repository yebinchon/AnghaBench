
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct des3_ede_ctx {int * expkey; } ;


 unsigned int DES3_EDE_KEY_SIZE ;
 int DES_EXPKEY_WORDS ;
 int DES_KEY_SIZE ;
 int EINVAL ;
 int ENOKEY ;
 int des3_ede_verify_key (int const*,unsigned int,int) ;
 int des_ekey (int *,int const*) ;
 int dkey (int *,int const*) ;

int des3_ede_expand_key(struct des3_ede_ctx *ctx, const u8 *key,
   unsigned int keylen)
{
 u32 *pe = ctx->expkey;
 int err;

 if (keylen != DES3_EDE_KEY_SIZE)
  return -EINVAL;

 err = des3_ede_verify_key(key, keylen, 1);
 if (err && err != -ENOKEY)
  return err;

 des_ekey(pe, key); pe += DES_EXPKEY_WORDS; key += DES_KEY_SIZE;
 dkey(pe, key); pe += DES_EXPKEY_WORDS; key += DES_KEY_SIZE;
 des_ekey(pe, key);

 return err;
}
