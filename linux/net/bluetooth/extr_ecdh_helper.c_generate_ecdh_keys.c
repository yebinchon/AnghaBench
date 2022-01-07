
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_kpp {int dummy; } ;


 int generate_ecdh_public_key (struct crypto_kpp*,int *) ;
 int set_ecdh_privkey (struct crypto_kpp*,int *) ;

int generate_ecdh_keys(struct crypto_kpp *tfm, u8 public_key[64])
{
 int err;

 err = set_ecdh_privkey(tfm, ((void*)0));
 if (err)
  return err;

 return generate_ecdh_public_key(tfm, public_key);
}
