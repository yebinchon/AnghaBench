
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_action {int tcfa_bindcnt; } ;


 int ACT_P_DELETED ;
 int EPERM ;
 scalar_t__ __tcf_action_put (struct tc_action*,int) ;
 scalar_t__ atomic_read (int *) ;

int __tcf_idr_release(struct tc_action *p, bool bind, bool strict)
{
 int ret = 0;
 if (p) {
  if (!bind && strict && atomic_read(&p->tcfa_bindcnt) > 0)
   return -EPERM;

  if (__tcf_action_put(p, bind))
   ret = ACT_P_DELETED;
 }

 return ret;
}
