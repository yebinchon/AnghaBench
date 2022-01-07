
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_pedit {struct tc_pedit_key* tcfp_keys_ex; struct tc_pedit_key* tcfp_keys; } ;
struct tc_pedit_key {int dummy; } ;
struct tc_action {int dummy; } ;


 int kfree (struct tc_pedit_key*) ;
 struct tcf_pedit* to_pedit (struct tc_action*) ;

__attribute__((used)) static void tcf_pedit_cleanup(struct tc_action *a)
{
 struct tcf_pedit *p = to_pedit(a);
 struct tc_pedit_key *keys = p->tcfp_keys;

 kfree(keys);
 kfree(p->tcfp_keys_ex);
}
