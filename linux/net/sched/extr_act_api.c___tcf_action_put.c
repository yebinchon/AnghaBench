
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_idrinfo {int lock; int action_idr; } ;
struct tc_action {int tcfa_bindcnt; int tcfa_index; int tcfa_refcnt; struct tcf_idrinfo* idrinfo; } ;


 int atomic_dec (int *) ;
 int idr_remove (int *,int ) ;
 int mutex_unlock (int *) ;
 scalar_t__ refcount_dec_and_mutex_lock (int *,int *) ;
 int tcf_action_cleanup (struct tc_action*) ;

__attribute__((used)) static int __tcf_action_put(struct tc_action *p, bool bind)
{
 struct tcf_idrinfo *idrinfo = p->idrinfo;

 if (refcount_dec_and_mutex_lock(&p->tcfa_refcnt, &idrinfo->lock)) {
  if (bind)
   atomic_dec(&p->tcfa_bindcnt);
  idr_remove(&idrinfo->action_idr, p->tcfa_index);
  mutex_unlock(&idrinfo->lock);

  tcf_action_cleanup(p);
  return 1;
 }

 if (bind)
  atomic_dec(&p->tcfa_bindcnt);

 return 0;
}
