
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bch_control {int* mod8_tab; int* ecc_buf; } ;
typedef int r ;


 int BCH_ECC_MAX_WORDS ;
 int BCH_ECC_WORDS (struct bch_control*) ;
 scalar_t__ WARN_ON (int) ;
 int cpu_to_be32 (int ) ;
 int encode_bch_unaligned (struct bch_control*,int const*,unsigned int,int*) ;
 int load_ecc8 (struct bch_control*,int*,int *) ;
 int memcpy (int*,int*,size_t const) ;
 int memset (int*,int ,size_t const) ;
 int store_ecc8 (struct bch_control*,int *,int*) ;

void encode_bch(struct bch_control *bch, const uint8_t *data,
  unsigned int len, uint8_t *ecc)
{
 const unsigned int l = BCH_ECC_WORDS(bch)-1;
 unsigned int i, mlen;
 unsigned long m;
 uint32_t w, r[BCH_ECC_MAX_WORDS];
 const size_t r_bytes = BCH_ECC_WORDS(bch) * sizeof(*r);
 const uint32_t * const tab0 = bch->mod8_tab;
 const uint32_t * const tab1 = tab0 + 256*(l+1);
 const uint32_t * const tab2 = tab1 + 256*(l+1);
 const uint32_t * const tab3 = tab2 + 256*(l+1);
 const uint32_t *pdata, *p0, *p1, *p2, *p3;

 if (WARN_ON(r_bytes > sizeof(r)))
  return;

 if (ecc) {

  load_ecc8(bch, bch->ecc_buf, ecc);
 } else {
  memset(bch->ecc_buf, 0, r_bytes);
 }


 m = ((unsigned long)data) & 3;
 if (m) {
  mlen = (len < (4-m)) ? len : 4-m;
  encode_bch_unaligned(bch, data, mlen, bch->ecc_buf);
  data += mlen;
  len -= mlen;
 }


 pdata = (uint32_t *)data;
 mlen = len/4;
 data += 4*mlen;
 len -= 4*mlen;
 memcpy(r, bch->ecc_buf, r_bytes);
 while (mlen--) {

  w = r[0]^cpu_to_be32(*pdata++);
  p0 = tab0 + (l+1)*((w >> 0) & 0xff);
  p1 = tab1 + (l+1)*((w >> 8) & 0xff);
  p2 = tab2 + (l+1)*((w >> 16) & 0xff);
  p3 = tab3 + (l+1)*((w >> 24) & 0xff);

  for (i = 0; i < l; i++)
   r[i] = r[i+1]^p0[i]^p1[i]^p2[i]^p3[i];

  r[l] = p0[l]^p1[l]^p2[l]^p3[l];
 }
 memcpy(bch->ecc_buf, r, r_bytes);


 if (len)
  encode_bch_unaligned(bch, data, len, bch->ecc_buf);


 if (ecc)
  store_ecc8(bch, ecc, bch->ecc_buf);
}
