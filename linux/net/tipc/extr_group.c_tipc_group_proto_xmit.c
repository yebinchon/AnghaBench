
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_msg {int dummy; } ;
struct tipc_member {scalar_t__ state; int advertised; int window; int bc_rcv_nxt; int port; int node; } ;
struct tipc_group {int bc_snd_nxt; int portid; int net; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;


 int ADV_ACTIVE ;
 int ADV_IDLE ;
 int GROUP_PROTOCOL ;
 int GRP_ACK_MSG ;
 int GRP_ADV_MSG ;
 int GRP_JOIN_MSG ;
 int GRP_LEAVE_MSG ;
 int GRP_REMIT_MSG ;
 int INT_H_SIZE ;
 scalar_t__ MBR_ACTIVE ;
 scalar_t__ MBR_JOINED ;
 scalar_t__ MBR_PENDING ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int msg_set_adv_win (struct tipc_msg*,int) ;
 int msg_set_dest_droppable (struct tipc_msg*,int) ;
 int msg_set_grp_bc_acked (struct tipc_msg*,int ) ;
 int msg_set_grp_bc_syncpt (struct tipc_msg*,int ) ;
 int msg_set_grp_remitted (struct tipc_msg*,int ) ;
 struct sk_buff* tipc_msg_create (int ,int,int ,int ,int ,int ,int ,int ,int ) ;
 int tipc_own_addr (int ) ;

__attribute__((used)) static void tipc_group_proto_xmit(struct tipc_group *grp, struct tipc_member *m,
      int mtyp, struct sk_buff_head *xmitq)
{
 struct tipc_msg *hdr;
 struct sk_buff *skb;
 int adv = 0;

 skb = tipc_msg_create(GROUP_PROTOCOL, mtyp, INT_H_SIZE, 0,
         m->node, tipc_own_addr(grp->net),
         m->port, grp->portid, 0);
 if (!skb)
  return;

 if (m->state == MBR_ACTIVE)
  adv = ADV_ACTIVE - m->advertised;
 else if (m->state == MBR_JOINED || m->state == MBR_PENDING)
  adv = ADV_IDLE - m->advertised;

 hdr = buf_msg(skb);

 if (mtyp == GRP_JOIN_MSG) {
  msg_set_grp_bc_syncpt(hdr, grp->bc_snd_nxt);
  msg_set_adv_win(hdr, adv);
  m->advertised += adv;
 } else if (mtyp == GRP_LEAVE_MSG) {
  msg_set_grp_bc_syncpt(hdr, grp->bc_snd_nxt);
 } else if (mtyp == GRP_ADV_MSG) {
  msg_set_adv_win(hdr, adv);
  m->advertised += adv;
 } else if (mtyp == GRP_ACK_MSG) {
  msg_set_grp_bc_acked(hdr, m->bc_rcv_nxt);
 } else if (mtyp == GRP_REMIT_MSG) {
  msg_set_grp_remitted(hdr, m->window);
 }
 msg_set_dest_droppable(hdr, 1);
 __skb_queue_tail(xmitq, skb);
}
