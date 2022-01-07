
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct tipc_net {scalar_t__ trial_addr; scalar_t__ addr_trial_end; } ;
struct tipc_media_addr {int dummy; } ;
struct tipc_discoverer {int skb; struct net* net; } ;
struct tipc_bearer {int dummy; } ;
struct net {int dummy; } ;


 int DSC_REQ_MSG ;
 int DSC_TRIAL_FAIL_MSG ;
 int DSC_TRIAL_MSG ;
 int buf_msg (int ) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 int msg_set_prevnode (int ,scalar_t__) ;
 int msg_set_type (int ,int ) ;
 int time_before (scalar_t__,scalar_t__) ;
 int tipc_disc_msg_xmit (struct net*,int,scalar_t__,scalar_t__,scalar_t__,struct tipc_media_addr*,struct tipc_bearer*) ;
 struct tipc_net* tipc_net (struct net*) ;
 scalar_t__ tipc_node_try_addr (struct net*,int *,scalar_t__) ;
 scalar_t__ tipc_own_addr (struct net*) ;
 int tipc_sched_net_finalize (struct net*,scalar_t__) ;

__attribute__((used)) static bool tipc_disc_addr_trial_msg(struct tipc_discoverer *d,
         struct tipc_media_addr *maddr,
         struct tipc_bearer *b,
         u32 dst, u32 src,
         u32 sugg_addr,
         u8 *peer_id,
         int mtyp)
{
 struct net *net = d->net;
 struct tipc_net *tn = tipc_net(net);
 bool trial = time_before(jiffies, tn->addr_trial_end);
 u32 self = tipc_own_addr(net);

 if (mtyp == DSC_TRIAL_FAIL_MSG) {
  if (!trial)
   return 1;


  if (dst != tn->trial_addr)
   return 1;


  tn->trial_addr = sugg_addr;
  msg_set_prevnode(buf_msg(d->skb), sugg_addr);
  tn->addr_trial_end = jiffies + msecs_to_jiffies(1000);
  return 1;
 }


 if (!trial && !self) {
  tipc_sched_net_finalize(net, tn->trial_addr);
  msg_set_prevnode(buf_msg(d->skb), tn->trial_addr);
  msg_set_type(buf_msg(d->skb), DSC_REQ_MSG);
 }


 if (mtyp != DSC_TRIAL_MSG)
  return trial;

 sugg_addr = tipc_node_try_addr(net, peer_id, src);
 if (sugg_addr)
  tipc_disc_msg_xmit(net, DSC_TRIAL_FAIL_MSG, src,
       self, sugg_addr, maddr, b);
 return 1;
}
