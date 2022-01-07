
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_media_addr {int dummy; } ;
struct tipc_discoverer {int lock; int skb; scalar_t__ timer_intv; int timer; int dest; scalar_t__ num_nodes; int domain; int bearer_id; struct net* net; } ;
struct tipc_bearer {int identity; int domain; struct tipc_discoverer* disc; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
typedef int maddr ;


 int DSC_REQ_MSG ;
 int GFP_ATOMIC ;
 scalar_t__ TIPC_DISC_INIT ;
 scalar_t__ jiffies ;
 int memcpy (struct tipc_media_addr*,int *,int) ;
 int mod_timer (int *,scalar_t__) ;
 struct sk_buff* skb_clone (int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_bearer_xmit_skb (struct net*,int ,struct sk_buff*,struct tipc_media_addr*) ;
 int tipc_disc_init_msg (struct net*,int ,int ,struct tipc_bearer*) ;

void tipc_disc_reset(struct net *net, struct tipc_bearer *b)
{
 struct tipc_discoverer *d = b->disc;
 struct tipc_media_addr maddr;
 struct sk_buff *skb;

 spin_lock_bh(&d->lock);
 tipc_disc_init_msg(net, d->skb, DSC_REQ_MSG, b);
 d->net = net;
 d->bearer_id = b->identity;
 d->domain = b->domain;
 d->num_nodes = 0;
 d->timer_intv = TIPC_DISC_INIT;
 memcpy(&maddr, &d->dest, sizeof(maddr));
 mod_timer(&d->timer, jiffies + d->timer_intv);
 skb = skb_clone(d->skb, GFP_ATOMIC);
 spin_unlock_bh(&d->lock);
 if (skb)
  tipc_bearer_xmit_skb(net, b->identity, skb, &maddr);
}
