
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_idrinfo {int lock; int action_idr; } ;
struct tc_action_net {struct tcf_idrinfo* idrinfo; } ;


 int IS_ERR (int ) ;
 int WARN_ON (int) ;
 int idr_remove (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void tcf_idr_cleanup(struct tc_action_net *tn, u32 index)
{
 struct tcf_idrinfo *idrinfo = tn->idrinfo;

 mutex_lock(&idrinfo->lock);

 WARN_ON(!IS_ERR(idr_remove(&idrinfo->action_idr, index)));
 mutex_unlock(&idrinfo->lock);
}
