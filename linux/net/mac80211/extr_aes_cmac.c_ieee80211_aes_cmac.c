
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct crypto_shash {int dummy; } ;
struct TYPE_6__ {struct crypto_shash* tfm; } ;


 scalar_t__ AAD_LEN ;
 int AES_BLOCK_SIZE ;
 scalar_t__ CMAC_TLEN ;
 int SHASH_DESC_ON_STACK (TYPE_1__*,struct crypto_shash*) ;
 int crypto_shash_finup (TYPE_1__*,int ,scalar_t__,int *) ;
 int crypto_shash_init (TYPE_1__*) ;
 int crypto_shash_update (TYPE_1__*,int const*,scalar_t__) ;
 TYPE_1__* desc ;
 int memcpy (int *,int *,scalar_t__) ;
 int zero ;

void ieee80211_aes_cmac(struct crypto_shash *tfm, const u8 *aad,
   const u8 *data, size_t data_len, u8 *mic)
{
 SHASH_DESC_ON_STACK(desc, tfm);
 u8 out[AES_BLOCK_SIZE];

 desc->tfm = tfm;

 crypto_shash_init(desc);
 crypto_shash_update(desc, aad, AAD_LEN);
 crypto_shash_update(desc, data, data_len - CMAC_TLEN);
 crypto_shash_finup(desc, zero, CMAC_TLEN, out);

 memcpy(mic, out, CMAC_TLEN);
}
