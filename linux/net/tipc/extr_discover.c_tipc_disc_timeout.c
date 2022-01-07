
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_net {int trial_addr; int addr_trial_end; } ;
struct tipc_media_addr {int dummy; } ;
struct tipc_discoverer {int timer_intv; int lock; int bearer_id; int skb; int dest; int timer; scalar_t__ num_nodes; int domain; struct net* net; } ;
struct timer_list {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
typedef int maddr ;


 int DSC_REQ_MSG ;
 int GFP_ATOMIC ;
 int TIPC_DISC_FAST ;
 int TIPC_DISC_INACTIVE ;
 int TIPC_DISC_INIT ;
 int TIPC_DISC_SLOW ;
 int buf_msg (int ) ;
 struct tipc_discoverer* d ;
 struct tipc_discoverer* from_timer (int ,struct timer_list*,int ) ;
 int jiffies ;
 int memcpy (struct tipc_media_addr*,int *,int) ;
 int mod_timer (int *,int) ;
 int msg_set_prevnode (int ,int ) ;
 int msg_set_type (int ,int ) ;
 struct sk_buff* skb_clone (int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ time_before (int,int ) ;
 int timer ;
 int tipc_bearer_xmit_skb (struct net*,int ,struct sk_buff*,struct tipc_media_addr*) ;
 struct tipc_net* tipc_net (struct net*) ;
 scalar_t__ tipc_node (int ) ;
 int tipc_own_addr (struct net*) ;
 int tipc_sched_net_finalize (struct net*,int ) ;

__attribute__((used)) static void tipc_disc_timeout(struct timer_list *t)
{
 struct tipc_discoverer *d = from_timer(d, t, timer);
 struct tipc_net *tn = tipc_net(d->net);
 struct tipc_media_addr maddr;
 struct sk_buff *skb = ((void*)0);
 struct net *net = d->net;
 u32 bearer_id;

 spin_lock_bh(&d->lock);


 if (tipc_node(d->domain) && d->num_nodes) {
  d->timer_intv = TIPC_DISC_INACTIVE;
  goto exit;
 }


 if (!time_before(jiffies, tn->addr_trial_end) && !tipc_own_addr(net)) {
  mod_timer(&d->timer, jiffies + TIPC_DISC_INIT);
  spin_unlock_bh(&d->lock);
  tipc_sched_net_finalize(net, tn->trial_addr);
  return;
 }


 if (time_before(jiffies, tn->addr_trial_end)) {
  d->timer_intv = TIPC_DISC_INIT;
 } else {
  d->timer_intv *= 2;
  if (d->num_nodes && d->timer_intv > TIPC_DISC_SLOW)
   d->timer_intv = TIPC_DISC_SLOW;
  else if (!d->num_nodes && d->timer_intv > TIPC_DISC_FAST)
   d->timer_intv = TIPC_DISC_FAST;
  msg_set_type(buf_msg(d->skb), DSC_REQ_MSG);
  msg_set_prevnode(buf_msg(d->skb), tn->trial_addr);
 }

 mod_timer(&d->timer, jiffies + d->timer_intv);
 memcpy(&maddr, &d->dest, sizeof(maddr));
 skb = skb_clone(d->skb, GFP_ATOMIC);
 bearer_id = d->bearer_id;
exit:
 spin_unlock_bh(&d->lock);
 if (skb)
  tipc_bearer_xmit_skb(net, bearer_id, skb, &maddr);
}
