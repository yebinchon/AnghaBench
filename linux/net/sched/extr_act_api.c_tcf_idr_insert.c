
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_idrinfo {int lock; int action_idr; } ;
struct tc_action_net {struct tcf_idrinfo* idrinfo; } ;
struct tc_action {int tcfa_index; } ;


 int IS_ERR (int ) ;
 int WARN_ON (int) ;
 int idr_replace (int *,struct tc_action*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void tcf_idr_insert(struct tc_action_net *tn, struct tc_action *a)
{
 struct tcf_idrinfo *idrinfo = tn->idrinfo;

 mutex_lock(&idrinfo->lock);

 WARN_ON(!IS_ERR(idr_replace(&idrinfo->action_idr, a, a->tcfa_index)));
 mutex_unlock(&idrinfo->lock);
}
