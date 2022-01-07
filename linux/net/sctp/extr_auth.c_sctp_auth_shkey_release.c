
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_shared_key {int refcnt; } ;


 scalar_t__ refcount_dec_and_test (int *) ;
 int sctp_auth_shkey_destroy (struct sctp_shared_key*) ;

void sctp_auth_shkey_release(struct sctp_shared_key *sh_key)
{
 if (refcount_dec_and_test(&sh_key->refcnt))
  sctp_auth_shkey_destroy(sh_key);
}
