
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_idrinfo {int lock; int action_idr; } ;
struct tc_action_net {struct tcf_idrinfo* idrinfo; } ;
struct tc_action {int tcfa_refcnt; } ;


 scalar_t__ IS_ERR (struct tc_action*) ;
 struct tc_action* idr_find (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int refcount_inc (int *) ;

int tcf_idr_search(struct tc_action_net *tn, struct tc_action **a, u32 index)
{
 struct tcf_idrinfo *idrinfo = tn->idrinfo;
 struct tc_action *p;

 mutex_lock(&idrinfo->lock);
 p = idr_find(&idrinfo->action_idr, index);
 if (IS_ERR(p))
  p = ((void*)0);
 else if (p)
  refcount_inc(&p->tcfa_refcnt);
 mutex_unlock(&idrinfo->lock);

 if (p) {
  *a = p;
  return 1;
 }
 return 0;
}
