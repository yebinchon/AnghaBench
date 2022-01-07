
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int usr_handle; } ;
struct tipc_event {TYPE_1__ s; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int INT_H_SIZE ;
 int TOP_SRV ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int buf_msg (struct sk_buff*) ;
 int memcpy (int ,struct tipc_event*,int) ;
 int msg_data (int ) ;
 int msg_set_dest_droppable (int ,int) ;
 int skb_queue_head_init (struct sk_buff_head*) ;
 int tipc_loopback_trace (struct net*,struct sk_buff_head*) ;
 struct sk_buff* tipc_msg_create (int ,int ,int ,int,int ,int ,int ,int ,int ) ;
 int tipc_own_addr (struct net*) ;
 int tipc_sk_rcv (struct net*,struct sk_buff_head*) ;

__attribute__((used)) static void tipc_topsrv_kern_evt(struct net *net, struct tipc_event *evt)
{
 u32 port = *(u32 *)&evt->s.usr_handle;
 u32 self = tipc_own_addr(net);
 struct sk_buff_head evtq;
 struct sk_buff *skb;

 skb = tipc_msg_create(TOP_SRV, 0, INT_H_SIZE, sizeof(*evt),
         self, self, port, port, 0);
 if (!skb)
  return;
 msg_set_dest_droppable(buf_msg(skb), 1);
 memcpy(msg_data(buf_msg(skb)), evt, sizeof(*evt));
 skb_queue_head_init(&evtq);
 __skb_queue_tail(&evtq, skb);
 tipc_loopback_trace(net, &evtq);
 tipc_sk_rcv(net, &evtq);
}
