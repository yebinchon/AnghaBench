
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int const u8 ;
struct crypto_aes_ctx {int dummy; } ;
typedef int ctx ;


 int BT_ERR (char*,int) ;
 int SMP_DBG (char*,int const*,...) ;
 int aes_encrypt (struct crypto_aes_ctx*,int const*,int const*) ;
 int aes_expandkey (struct crypto_aes_ctx*,int const*,int) ;
 int memzero_explicit (struct crypto_aes_ctx*,int) ;
 int swap_buf (int const*,int const*,int) ;

__attribute__((used)) static int smp_e(const u8 *k, u8 *r)
{
 struct crypto_aes_ctx ctx;
 uint8_t tmp[16], data[16];
 int err;

 SMP_DBG("k %16phN r %16phN", k, r);


 swap_buf(k, tmp, 16);

 err = aes_expandkey(&ctx, tmp, 16);
 if (err) {
  BT_ERR("cipher setkey failed: %d", err);
  return err;
 }


 swap_buf(r, data, 16);

 aes_encrypt(&ctx, data, data);


 swap_buf(data, r, 16);

 SMP_DBG("r %16phN", r);

 memzero_explicit(&ctx, sizeof (ctx));
 return err;
}
