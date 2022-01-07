
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_net {scalar_t__ addr_trial_end; } ;
struct tipc_media_addr {int dummy; } ;
struct tipc_discoverer {int skb; scalar_t__ timer_intv; int timer; int lock; scalar_t__ num_nodes; int domain; int bearer_id; struct net* net; int dest; } ;
struct tipc_bearer {struct tipc_discoverer* disc; int domain; int identity; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int DSC_REQ_MSG ;
 int DSC_TRIAL_MSG ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ MAX_H_SIZE ;
 scalar_t__ NODE_ID_LEN ;
 scalar_t__ TIPC_DISC_INIT ;
 int buf_msg (int ) ;
 scalar_t__ jiffies ;
 int kfree (struct tipc_discoverer*) ;
 struct tipc_discoverer* kmalloc (int,int ) ;
 int memcpy (int *,struct tipc_media_addr*,int) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int msg_set_type (int ,int ) ;
 struct sk_buff* skb_clone (int ,int ) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int tipc_buf_acquire (scalar_t__,int ) ;
 int tipc_disc_init_msg (struct net*,int ,int ,struct tipc_bearer*) ;
 int tipc_disc_timeout ;
 struct tipc_net* tipc_net (struct net*) ;
 int tipc_own_addr (struct net*) ;

int tipc_disc_create(struct net *net, struct tipc_bearer *b,
       struct tipc_media_addr *dest, struct sk_buff **skb)
{
 struct tipc_net *tn = tipc_net(net);
 struct tipc_discoverer *d;

 d = kmalloc(sizeof(*d), GFP_ATOMIC);
 if (!d)
  return -ENOMEM;
 d->skb = tipc_buf_acquire(MAX_H_SIZE + NODE_ID_LEN, GFP_ATOMIC);
 if (!d->skb) {
  kfree(d);
  return -ENOMEM;
 }
 tipc_disc_init_msg(net, d->skb, DSC_REQ_MSG, b);


 if (!tipc_own_addr(net)) {
  tn->addr_trial_end = jiffies + msecs_to_jiffies(1000);
  msg_set_type(buf_msg(d->skb), DSC_TRIAL_MSG);
 }
 memcpy(&d->dest, dest, sizeof(*dest));
 d->net = net;
 d->bearer_id = b->identity;
 d->domain = b->domain;
 d->num_nodes = 0;
 d->timer_intv = TIPC_DISC_INIT;
 spin_lock_init(&d->lock);
 timer_setup(&d->timer, tipc_disc_timeout, 0);
 mod_timer(&d->timer, jiffies + d->timer_intv);
 b->disc = d;
 *skb = skb_clone(d->skb, GFP_ATOMIC);
 return 0;
}
