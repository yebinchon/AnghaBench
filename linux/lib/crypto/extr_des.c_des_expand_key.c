
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct des_ctx {int expkey; } ;


 unsigned int DES_KEY_SIZE ;
 int EINVAL ;
 int ENOKEY ;
 scalar_t__ des_ekey (int ,int const*) ;

int des_expand_key(struct des_ctx *ctx, const u8 *key, unsigned int keylen)
{
 if (keylen != DES_KEY_SIZE)
  return -EINVAL;

 return des_ekey(ctx->expkey, key) ? 0 : -ENOKEY;
}
