
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_exts {scalar_t__ nr_actions; scalar_t__ actions; } ;


 int TCA_ACT_UNBIND ;
 int kfree (scalar_t__) ;
 int tcf_action_destroy (scalar_t__,int ) ;

void tcf_exts_destroy(struct tcf_exts *exts)
{







}
