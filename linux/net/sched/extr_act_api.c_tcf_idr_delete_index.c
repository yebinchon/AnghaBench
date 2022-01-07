
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcf_idrinfo {int lock; int action_idr; } ;
struct tc_action {int tcfa_index; TYPE_1__* ops; int tcfa_refcnt; int tcfa_bindcnt; } ;
struct module {int dummy; } ;
struct TYPE_2__ {struct module* owner; } ;


 int ENOENT ;
 int EPERM ;
 int WARN_ON (int) ;
 int atomic_read (int *) ;
 struct tc_action* idr_find (int *,int ) ;
 struct tc_action* idr_remove (int *,int ) ;
 int module_put (struct module*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int tcf_action_cleanup (struct tc_action*) ;

__attribute__((used)) static int tcf_idr_delete_index(struct tcf_idrinfo *idrinfo, u32 index)
{
 struct tc_action *p;
 int ret = 0;

 mutex_lock(&idrinfo->lock);
 p = idr_find(&idrinfo->action_idr, index);
 if (!p) {
  mutex_unlock(&idrinfo->lock);
  return -ENOENT;
 }

 if (!atomic_read(&p->tcfa_bindcnt)) {
  if (refcount_dec_and_test(&p->tcfa_refcnt)) {
   struct module *owner = p->ops->owner;

   WARN_ON(p != idr_remove(&idrinfo->action_idr,
      p->tcfa_index));
   mutex_unlock(&idrinfo->lock);

   tcf_action_cleanup(p);
   module_put(owner);
   return 0;
  }
  ret = 0;
 } else {
  ret = -EPERM;
 }

 mutex_unlock(&idrinfo->lock);
 return ret;
}
