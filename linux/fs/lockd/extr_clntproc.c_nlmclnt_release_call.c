
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlmclnt_operations {int (* nlmclnt_release_call ) (int ) ;} ;
struct nlm_rqst {TYPE_1__* a_host; int a_callback_data; int a_count; } ;
struct TYPE_2__ {struct nlmclnt_operations* h_nlmclnt_ops; } ;


 int kfree (struct nlm_rqst*) ;
 int nlmclnt_release_host (TYPE_1__*) ;
 int nlmclnt_release_lockargs (struct nlm_rqst*) ;
 int refcount_dec_and_test (int *) ;
 int stub1 (int ) ;

void nlmclnt_release_call(struct nlm_rqst *call)
{
 const struct nlmclnt_operations *nlmclnt_ops = call->a_host->h_nlmclnt_ops;

 if (!refcount_dec_and_test(&call->a_count))
  return;
 if (nlmclnt_ops && nlmclnt_ops->nlmclnt_release_call)
  nlmclnt_ops->nlmclnt_release_call(call->a_callback_data);
 nlmclnt_release_host(call->a_host);
 nlmclnt_release_lockargs(call);
 kfree(call);
}
