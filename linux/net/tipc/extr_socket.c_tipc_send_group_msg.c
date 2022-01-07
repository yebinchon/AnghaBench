
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct tipc_msg {int dummy; } ;
struct tipc_mc_method {int rcast; int mandatory; } ;
struct tipc_sock {int cong_link_cnt; int cong_links; int portid; struct tipc_msg phdr; struct tipc_mc_method mc_method; int group; } ;
struct tipc_member {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct net {int dummy; } ;
struct msghdr {int dummy; } ;


 int ELINKCONG ;
 scalar_t__ GROUP_H_SIZE ;
 int TIPC_GRP_UCAST_MSG ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int msg_set_destnode (struct tipc_msg*,int ) ;
 int msg_set_destport (struct tipc_msg*,int ) ;
 int msg_set_grp_bc_seqno (struct tipc_msg*,int ) ;
 int msg_set_hdr_sz (struct tipc_msg*,scalar_t__) ;
 int msg_set_type (struct tipc_msg*,int ) ;
 int tipc_dest_push (int *,int ,int ) ;
 int tipc_group_bc_snd_nxt (int ) ;
 int tipc_group_update_member (struct tipc_member*,int) ;
 int tipc_msg_build (struct tipc_msg*,struct msghdr*,int ,int,int,struct sk_buff_head*) ;
 int tipc_node_get_mtu (struct net*,int ,int ) ;
 int tipc_node_xmit (struct net*,struct sk_buff_head*,int ,int ) ;
 int tsk_blocks (scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int tipc_send_group_msg(struct net *net, struct tipc_sock *tsk,
          struct msghdr *m, struct tipc_member *mb,
          u32 dnode, u32 dport, int dlen)
{
 u16 bc_snd_nxt = tipc_group_bc_snd_nxt(tsk->group);
 struct tipc_mc_method *method = &tsk->mc_method;
 int blks = tsk_blocks(GROUP_H_SIZE + dlen);
 struct tipc_msg *hdr = &tsk->phdr;
 struct sk_buff_head pkts;
 int mtu, rc;


 msg_set_type(hdr, TIPC_GRP_UCAST_MSG);
 msg_set_hdr_sz(hdr, GROUP_H_SIZE);
 msg_set_destport(hdr, dport);
 msg_set_destnode(hdr, dnode);
 msg_set_grp_bc_seqno(hdr, bc_snd_nxt);


 __skb_queue_head_init(&pkts);
 mtu = tipc_node_get_mtu(net, dnode, tsk->portid);
 rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
 if (unlikely(rc != dlen))
  return rc;


 rc = tipc_node_xmit(net, &pkts, dnode, tsk->portid);
 if (unlikely(rc == -ELINKCONG)) {
  tipc_dest_push(&tsk->cong_links, dnode, 0);
  tsk->cong_link_cnt++;
 }


 tipc_group_update_member(mb, blks);


 method->rcast = 1;
 method->mandatory = 1;
 return dlen;
}
