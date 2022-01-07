
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct key*) ;
 int PTR_ERR (struct key*) ;
 int asymmetric_verify (struct key*,char const*,int,char const*,int) ;
 int digsig_verify (struct key*,char const*,int,char const*,int) ;
 struct key* integrity_keyring_from_id (unsigned int const) ;

int integrity_digsig_verify(const unsigned int id, const char *sig, int siglen,
       const char *digest, int digestlen)
{
 struct key *keyring;

 if (siglen < 2)
  return -EINVAL;

 keyring = integrity_keyring_from_id(id);
 if (IS_ERR(keyring))
  return PTR_ERR(keyring);

 switch (sig[1]) {
 case 1:

  return digsig_verify(keyring, sig + 1, siglen - 1, digest,
         digestlen);
 case 2:
  return asymmetric_verify(keyring, sig, siglen, digest,
      digestlen);
 }

 return -EOPNOTSUPP;
}
