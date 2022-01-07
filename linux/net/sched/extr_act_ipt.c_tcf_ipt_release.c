
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_ipt {scalar_t__ tcfi_tname; scalar_t__ tcfi_t; } ;
struct tc_action {TYPE_1__* idrinfo; } ;
struct TYPE_2__ {int net; } ;


 int ipt_destroy_target (scalar_t__,int ) ;
 int kfree (scalar_t__) ;
 struct tcf_ipt* to_ipt (struct tc_action*) ;

__attribute__((used)) static void tcf_ipt_release(struct tc_action *a)
{
 struct tcf_ipt *ipt = to_ipt(a);

 if (ipt->tcfi_t) {
  ipt_destroy_target(ipt->tcfi_t, a->idrinfo->net);
  kfree(ipt->tcfi_t);
 }
 kfree(ipt->tcfi_tname);
}
