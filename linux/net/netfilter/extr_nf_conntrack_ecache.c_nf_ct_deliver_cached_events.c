
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nf_ct_event_notifier {int (* fcn ) (unsigned long,struct nf_ct_event*) ;} ;
struct nf_ct_event {scalar_t__ report; scalar_t__ portid; struct nf_conn* ct; } ;
struct nf_conntrack_ecache {unsigned long missed; unsigned long ctmask; int cache; } ;
struct nf_conn {int lock; } ;
struct TYPE_2__ {int nf_conntrack_event_cb; } ;
struct net {TYPE_1__ ct; } ;


 scalar_t__ likely (int) ;
 struct nf_conntrack_ecache* nf_ct_ecache_find (struct nf_conn*) ;
 int nf_ct_is_confirmed (struct nf_conn*) ;
 scalar_t__ nf_ct_is_dying (struct nf_conn*) ;
 struct net* nf_ct_net (struct nf_conn*) ;
 struct nf_ct_event_notifier* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (unsigned long,struct nf_ct_event*) ;
 unsigned long xchg (int *,int ) ;

void nf_ct_deliver_cached_events(struct nf_conn *ct)
{
 struct net *net = nf_ct_net(ct);
 unsigned long events, missed;
 struct nf_ct_event_notifier *notify;
 struct nf_conntrack_ecache *e;
 struct nf_ct_event item;
 int ret;

 rcu_read_lock();
 notify = rcu_dereference(net->ct.nf_conntrack_event_cb);
 if (notify == ((void*)0))
  goto out_unlock;

 e = nf_ct_ecache_find(ct);
 if (e == ((void*)0))
  goto out_unlock;

 events = xchg(&e->cache, 0);

 if (!nf_ct_is_confirmed(ct) || nf_ct_is_dying(ct))
  goto out_unlock;




 missed = e->missed;

 if (!((events | missed) & e->ctmask))
  goto out_unlock;

 item.ct = ct;
 item.portid = 0;
 item.report = 0;

 ret = notify->fcn(events | missed, &item);

 if (likely(ret == 0 && !missed))
  goto out_unlock;

 spin_lock_bh(&ct->lock);
 if (ret < 0)
  e->missed |= events;
 else
  e->missed &= ~missed;
 spin_unlock_bh(&ct->lock);

out_unlock:
 rcu_read_unlock();
}
