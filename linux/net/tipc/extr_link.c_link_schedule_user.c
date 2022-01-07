
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tipc_msg {int dummy; } ;
struct TYPE_3__ {int link_congs; } ;
struct tipc_link {TYPE_1__ stats; int wakeupq; int addr; int net; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int chain_imp; } ;


 int ELINKCONG ;
 int ENOBUFS ;
 int INT_H_SIZE ;
 int SOCK_WAKEUP ;
 int TIPC_DUMP_ALL ;
 TYPE_2__* TIPC_SKB_CB (struct sk_buff*) ;
 int buf_msg (struct sk_buff*) ;
 int msg_importance (struct tipc_msg*) ;
 int msg_origport (struct tipc_msg*) ;
 int msg_set_dest_droppable (int ,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 struct sk_buff* tipc_msg_create (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int tipc_own_addr (int ) ;
 int trace_tipc_link_conges (struct tipc_link*,int ,char*) ;

__attribute__((used)) static int link_schedule_user(struct tipc_link *l, struct tipc_msg *hdr)
{
 u32 dnode = tipc_own_addr(l->net);
 u32 dport = msg_origport(hdr);
 struct sk_buff *skb;


 skb = tipc_msg_create(SOCK_WAKEUP, 0, INT_H_SIZE, 0,
         dnode, l->addr, dport, 0, 0);
 if (!skb)
  return -ENOBUFS;
 msg_set_dest_droppable(buf_msg(skb), 1);
 TIPC_SKB_CB(skb)->chain_imp = msg_importance(hdr);
 skb_queue_tail(&l->wakeupq, skb);
 l->stats.link_congs++;
 trace_tipc_link_conges(l, TIPC_DUMP_ALL, "wakeup scheduled!");
 return -ELINKCONG;
}
