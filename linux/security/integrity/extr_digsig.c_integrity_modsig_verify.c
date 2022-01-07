
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modsig {int dummy; } ;
struct key {int dummy; } ;


 scalar_t__ IS_ERR (struct key*) ;
 int PTR_ERR (struct key*) ;
 int ima_modsig_verify (struct key*,struct modsig const*) ;
 struct key* integrity_keyring_from_id (unsigned int const) ;

int integrity_modsig_verify(const unsigned int id, const struct modsig *modsig)
{
 struct key *keyring;

 keyring = integrity_keyring_from_id(id);
 if (IS_ERR(keyring))
  return PTR_ERR(keyring);

 return ima_modsig_verify(keyring, modsig);
}
