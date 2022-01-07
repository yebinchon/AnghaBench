
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_auth_bytes {int refcnt; } ;


 int SCTP_DBG_OBJCNT_DEC (int ) ;
 int keys ;
 int kzfree (struct sctp_auth_bytes*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void sctp_auth_key_put(struct sctp_auth_bytes *key)
{
 if (!key)
  return;

 if (refcount_dec_and_test(&key->refcnt)) {
  kzfree(key);
  SCTP_DBG_OBJCNT_DEC(keys);
 }
}
