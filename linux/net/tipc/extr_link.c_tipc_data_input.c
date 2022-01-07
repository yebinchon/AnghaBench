
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_msg {int dummy; } ;
struct tipc_link {struct sk_buff_head* namedq; TYPE_1__* bc_rcvlink; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int state; struct sk_buff_head* inputq; } ;





 int LINK_ESTABLISHED ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int msg_in_group (struct tipc_msg*) ;
 int msg_mcast (struct tipc_msg*) ;
 int msg_user (struct tipc_msg*) ;
 int pr_warn (char*) ;
 int skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int unlikely (int) ;

__attribute__((used)) static bool tipc_data_input(struct tipc_link *l, struct sk_buff *skb,
       struct sk_buff_head *inputq)
{
 struct sk_buff_head *mc_inputq = l->bc_rcvlink->inputq;
 struct tipc_msg *hdr = buf_msg(skb);

 switch (msg_user(hdr)) {
 case 130:
 case 129:
 case 131:
 case 132:
  if (unlikely(msg_in_group(hdr) || msg_mcast(hdr))) {
   skb_queue_tail(mc_inputq, skb);
   return 1;
  }

 case 137:
  skb_queue_tail(inputq, skb);
  return 1;
 case 136:
  skb_queue_tail(mc_inputq, skb);
  return 1;
 case 133:
  l->bc_rcvlink->state = LINK_ESTABLISHED;
  skb_queue_tail(l->namedq, skb);
  return 1;
 case 135:
 case 128:
 case 134:
 case 138:
  return 0;
 default:
  pr_warn("Dropping received illegal msg type\n");
  kfree_skb(skb);
  return 1;
 };
}
