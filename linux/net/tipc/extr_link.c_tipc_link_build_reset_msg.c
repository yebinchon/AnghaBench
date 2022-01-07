
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_link {scalar_t__ state; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;


 int ACTIVATE_MSG ;
 scalar_t__ LINK_ESTABLISHING ;
 scalar_t__ LINK_RESET ;
 int RESET_MSG ;
 int buf_msg (struct sk_buff*) ;
 int msg_set_peer_stopping (int ,int) ;
 struct sk_buff* skb_peek_tail (struct sk_buff_head*) ;
 int tipc_link_build_proto_msg (struct tipc_link*,int,int ,int ,int ,int ,int ,struct sk_buff_head*) ;

void tipc_link_build_reset_msg(struct tipc_link *l, struct sk_buff_head *xmitq)
{
 int mtyp = RESET_MSG;
 struct sk_buff *skb;

 if (l->state == LINK_ESTABLISHING)
  mtyp = ACTIVATE_MSG;

 tipc_link_build_proto_msg(l, mtyp, 0, 0, 0, 0, 0, xmitq);


 skb = skb_peek_tail(xmitq);
 if (skb && (l->state == LINK_RESET))
  msg_set_peer_stopping(buf_msg(skb), 1);
}
