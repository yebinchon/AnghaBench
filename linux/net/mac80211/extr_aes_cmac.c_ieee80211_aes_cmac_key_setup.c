
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_shash {int dummy; } ;


 int IS_ERR (struct crypto_shash*) ;
 struct crypto_shash* crypto_alloc_shash (char*,int ,int ) ;
 int crypto_shash_setkey (struct crypto_shash*,int const*,size_t) ;

struct crypto_shash *ieee80211_aes_cmac_key_setup(const u8 key[],
        size_t key_len)
{
 struct crypto_shash *tfm;

 tfm = crypto_alloc_shash("cmac(aes)", 0, 0);
 if (!IS_ERR(tfm))
  crypto_shash_setkey(tfm, key, key_len);

 return tfm;
}
