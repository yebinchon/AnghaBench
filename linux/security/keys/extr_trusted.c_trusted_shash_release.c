
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_free_shash (scalar_t__) ;
 scalar_t__ hashalg ;
 scalar_t__ hmacalg ;

__attribute__((used)) static void trusted_shash_release(void)
{
 if (hashalg)
  crypto_free_shash(hashalg);
 if (hmacalg)
  crypto_free_shash(hmacalg);
}
