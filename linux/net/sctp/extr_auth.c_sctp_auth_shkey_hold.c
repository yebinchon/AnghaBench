
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_shared_key {int refcnt; } ;


 int refcount_inc (int *) ;

void sctp_auth_shkey_hold(struct sctp_shared_key *sh_key)
{
 refcount_inc(&sh_key->refcnt);
}
