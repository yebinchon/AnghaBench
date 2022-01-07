
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_link {int bc_rcvlink; } ;
struct sk_buff_head {int dummy; } ;


 int __skb_queue_head_init (struct sk_buff_head*) ;
 int buf_msg (int ) ;
 int msg_set_bc_ack_invalid (int ,int) ;
 int skb_peek (struct sk_buff_head*) ;
 int tipc_link_build_bc_proto_msg (int ,int,int ,struct sk_buff_head*) ;
 int tipc_link_xmit (struct tipc_link*,struct sk_buff_head*,struct sk_buff_head*) ;

__attribute__((used)) static void tipc_link_build_bc_init_msg(struct tipc_link *l,
     struct sk_buff_head *xmitq)
{
 struct sk_buff_head list;

 __skb_queue_head_init(&list);
 if (!tipc_link_build_bc_proto_msg(l->bc_rcvlink, 0, 0, &list))
  return;
 msg_set_bc_ack_invalid(buf_msg(skb_peek(&list)), 1);
 tipc_link_xmit(l, &list, xmitq);
}
