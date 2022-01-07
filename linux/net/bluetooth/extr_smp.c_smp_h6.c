
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_shash {int dummy; } ;


 int SMP_DBG (char*,int *,...) ;
 int aes_cmac (struct crypto_shash*,int const*,int const*,int,int *) ;

__attribute__((used)) static int smp_h6(struct crypto_shash *tfm_cmac, const u8 w[16],
    const u8 key_id[4], u8 res[16])
{
 int err;

 SMP_DBG("w %16phN key_id %4phN", w, key_id);

 err = aes_cmac(tfm_cmac, w, key_id, 4, res);
 if (err)
  return err;

 SMP_DBG("res %16phN", res);

 return err;
}
