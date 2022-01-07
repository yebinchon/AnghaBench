
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nf_exp_event_notifier {int (* fcn ) (int,struct nf_exp_event*) ;} ;
struct nf_exp_event {int report; int portid; struct nf_conntrack_expect* exp; } ;
struct nf_conntrack_expect {int master; } ;
struct nf_conntrack_ecache {int expmask; } ;
struct TYPE_2__ {int nf_expect_event_cb; } ;
struct net {TYPE_1__ ct; } ;
typedef enum ip_conntrack_expect_events { ____Placeholder_ip_conntrack_expect_events } ip_conntrack_expect_events ;


 struct nf_conntrack_ecache* nf_ct_ecache_find (int ) ;
 struct net* nf_ct_exp_net (struct nf_conntrack_expect*) ;
 struct nf_exp_event_notifier* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (int,struct nf_exp_event*) ;

void nf_ct_expect_event_report(enum ip_conntrack_expect_events event,
          struct nf_conntrack_expect *exp,
          u32 portid, int report)

{
 struct net *net = nf_ct_exp_net(exp);
 struct nf_exp_event_notifier *notify;
 struct nf_conntrack_ecache *e;

 rcu_read_lock();
 notify = rcu_dereference(net->ct.nf_expect_event_cb);
 if (!notify)
  goto out_unlock;

 e = nf_ct_ecache_find(exp->master);
 if (!e)
  goto out_unlock;

 if (e->expmask & (1 << event)) {
  struct nf_exp_event item = {
   .exp = exp,
   .portid = portid,
   .report = report
  };
  notify->fcn(1 << event, &item);
 }
out_unlock:
 rcu_read_unlock();
}
