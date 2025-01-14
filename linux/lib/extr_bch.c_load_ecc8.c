
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bch_control {int dummy; } ;


 scalar_t__ BCH_ECC_BYTES (struct bch_control*) ;
 int BCH_ECC_WORDS (struct bch_control*) ;
 int memcpy (int*,int const*,scalar_t__) ;

__attribute__((used)) static void load_ecc8(struct bch_control *bch, uint32_t *dst,
        const uint8_t *src)
{
 uint8_t pad[4] = {0, 0, 0, 0};
 unsigned int i, nwords = BCH_ECC_WORDS(bch)-1;

 for (i = 0; i < nwords; i++, src += 4)
  dst[i] = (src[0] << 24)|(src[1] << 16)|(src[2] << 8)|src[3];

 memcpy(pad, src, BCH_ECC_BYTES(bch)-4*nwords);
 dst[nwords] = (pad[0] << 24)|(pad[1] << 16)|(pad[2] << 8)|pad[3];
}
