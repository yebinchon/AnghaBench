
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_shash {int dummy; } ;


 int SCTP_AUTH_NUM_HMACS ;
 int crypto_free_shash (struct crypto_shash*) ;
 int kfree (struct crypto_shash**) ;

void sctp_auth_destroy_hmacs(struct crypto_shash *auth_hmacs[])
{
 int i;

 if (!auth_hmacs)
  return;

 for (i = 0; i < SCTP_AUTH_NUM_HMACS; i++) {
  crypto_free_shash(auth_hmacs[i]);
 }
 kfree(auth_hmacs);
}
