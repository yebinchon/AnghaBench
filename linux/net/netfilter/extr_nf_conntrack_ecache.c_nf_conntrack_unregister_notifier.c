
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nf_ct_event_notifier {int dummy; } ;
struct TYPE_2__ {int nf_conntrack_event_cb; } ;
struct net {TYPE_1__ ct; } ;


 int BUG_ON (int) ;
 int RCU_INIT_POINTER (int ,int *) ;
 int lockdep_is_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_ct_ecache_mutex ;
 struct nf_ct_event_notifier* rcu_dereference_protected (int ,int ) ;

void nf_conntrack_unregister_notifier(struct net *net,
          struct nf_ct_event_notifier *new)
{
 struct nf_ct_event_notifier *notify;

 mutex_lock(&nf_ct_ecache_mutex);
 notify = rcu_dereference_protected(net->ct.nf_conntrack_event_cb,
        lockdep_is_held(&nf_ct_ecache_mutex));
 BUG_ON(notify != new);
 RCU_INIT_POINTER(net->ct.nf_conntrack_event_cb, ((void*)0));
 mutex_unlock(&nf_ct_ecache_mutex);

}
