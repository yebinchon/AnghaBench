
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_action {int tcfa_index; TYPE_1__* idrinfo; int tcfa_refcnt; int tcfa_bindcnt; } ;
struct TYPE_2__ {int action_idr; } ;


 int ACT_P_DELETED ;
 int EPERM ;
 scalar_t__ atomic_read (int *) ;
 int idr_remove (int *,int ) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int tcf_action_cleanup (struct tc_action*) ;

__attribute__((used)) static int tcf_idr_release_unsafe(struct tc_action *p)
{
 if (atomic_read(&p->tcfa_bindcnt) > 0)
  return -EPERM;

 if (refcount_dec_and_test(&p->tcfa_refcnt)) {
  idr_remove(&p->idrinfo->action_idr, p->tcfa_index);
  tcf_action_cleanup(p);
  return ACT_P_DELETED;
 }

 return 0;
}
