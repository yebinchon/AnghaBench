
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_idrinfo {int lock; int action_idr; } ;
struct tc_action_net {struct tcf_idrinfo* idrinfo; } ;
struct tc_action {int tcfa_bindcnt; int tcfa_refcnt; } ;


 int EBUSY ;
 int ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct tc_action*) ;
 int UINT_MAX ;
 int atomic_inc (int *) ;
 int idr_alloc_u32 (int *,int *,int*,int,int ) ;
 struct tc_action* idr_find (int *,int) ;
 int idr_replace (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int refcount_inc (int *) ;

int tcf_idr_check_alloc(struct tc_action_net *tn, u32 *index,
   struct tc_action **a, int bind)
{
 struct tcf_idrinfo *idrinfo = tn->idrinfo;
 struct tc_action *p;
 int ret;

again:
 mutex_lock(&idrinfo->lock);
 if (*index) {
  p = idr_find(&idrinfo->action_idr, *index);
  if (IS_ERR(p)) {



   mutex_unlock(&idrinfo->lock);
   goto again;
  }

  if (p) {
   refcount_inc(&p->tcfa_refcnt);
   if (bind)
    atomic_inc(&p->tcfa_bindcnt);
   *a = p;
   ret = 1;
  } else {
   *a = ((void*)0);
   ret = idr_alloc_u32(&idrinfo->action_idr, ((void*)0), index,
         *index, GFP_KERNEL);
   if (!ret)
    idr_replace(&idrinfo->action_idr,
         ERR_PTR(-EBUSY), *index);
  }
 } else {
  *index = 1;
  *a = ((void*)0);
  ret = idr_alloc_u32(&idrinfo->action_idr, ((void*)0), index,
        UINT_MAX, GFP_KERNEL);
  if (!ret)
   idr_replace(&idrinfo->action_idr, ERR_PTR(-EBUSY),
        *index);
 }
 mutex_unlock(&idrinfo->lock);
 return ret;
}
