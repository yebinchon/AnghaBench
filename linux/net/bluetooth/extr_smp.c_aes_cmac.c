
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int const uint8_t ;
typedef int const u8 ;
struct crypto_shash {int dummy; } ;
struct TYPE_5__ {struct crypto_shash* tfm; } ;


 int BT_ERR (char*,int) ;
 int CMAC_MSG_MAX ;
 int EFBIG ;
 int EINVAL ;
 int SHASH_DESC_ON_STACK (TYPE_1__*,struct crypto_shash*) ;
 int SMP_DBG (char*,size_t,...) ;
 int crypto_shash_digest (TYPE_1__*,int const*,size_t,int const*) ;
 int crypto_shash_setkey (struct crypto_shash*,int const*,int) ;
 TYPE_1__* desc ;
 int shash_desc_zero (TYPE_1__*) ;
 int swap_buf (int const*,int const*,int) ;

__attribute__((used)) static int aes_cmac(struct crypto_shash *tfm, const u8 k[16], const u8 *m,
      size_t len, u8 mac[16])
{
 uint8_t tmp[16], mac_msb[16], msg_msb[CMAC_MSG_MAX];
 SHASH_DESC_ON_STACK(desc, tfm);
 int err;

 if (len > CMAC_MSG_MAX)
  return -EFBIG;

 if (!tfm) {
  BT_ERR("tfm %p", tfm);
  return -EINVAL;
 }

 desc->tfm = tfm;


 swap_buf(k, tmp, 16);
 swap_buf(m, msg_msb, len);

 SMP_DBG("msg (len %zu) %*phN", len, (int) len, m);
 SMP_DBG("key %16phN", k);

 err = crypto_shash_setkey(tfm, tmp, 16);
 if (err) {
  BT_ERR("cipher setkey failed: %d", err);
  return err;
 }

 err = crypto_shash_digest(desc, msg_msb, len, mac_msb);
 shash_desc_zero(desc);
 if (err) {
  BT_ERR("Hash computation error %d", err);
  return err;
 }

 swap_buf(mac_msb, mac, 16);

 SMP_DBG("mac %16phN", mac);

 return 0;
}
