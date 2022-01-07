
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_rqst {int a_host; int a_count; } ;


 int kfree (struct nlm_rqst*) ;
 int nlmsvc_release_host (int ) ;
 int refcount_dec_and_test (int *) ;

void nlmsvc_release_call(struct nlm_rqst *call)
{
 if (!refcount_dec_and_test(&call->a_count))
  return;
 nlmsvc_release_host(call->a_host);
 kfree(call);
}
