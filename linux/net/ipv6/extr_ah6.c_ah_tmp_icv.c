
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ahash {int dummy; } ;


 int * PTR_ALIGN (int *,scalar_t__) ;
 scalar_t__ crypto_ahash_alignmask (struct crypto_ahash*) ;

__attribute__((used)) static inline u8 *ah_tmp_icv(struct crypto_ahash *ahash, void *tmp,
        unsigned int offset)
{
 return PTR_ALIGN((u8 *)tmp + offset, crypto_ahash_alignmask(ahash) + 1);
}
