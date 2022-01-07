
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;
struct tipc_media_addr {int dummy; } ;
struct tipc_bearer {int identity; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int GFP_ATOMIC ;
 scalar_t__ MAX_H_SIZE ;
 scalar_t__ NODE_ID_LEN ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int msg_set_dest_domain (struct tipc_msg*,int ) ;
 int msg_set_sugg_node_addr (struct tipc_msg*,int ) ;
 int tipc_bearer_xmit_skb (struct net*,int ,struct sk_buff*,struct tipc_media_addr*) ;
 struct sk_buff* tipc_buf_acquire (scalar_t__,int ) ;
 int tipc_disc_init_msg (struct net*,struct sk_buff*,int ,struct tipc_bearer*) ;

__attribute__((used)) static void tipc_disc_msg_xmit(struct net *net, u32 mtyp, u32 dst,
          u32 src, u32 sugg_addr,
          struct tipc_media_addr *maddr,
          struct tipc_bearer *b)
{
 struct tipc_msg *hdr;
 struct sk_buff *skb;

 skb = tipc_buf_acquire(MAX_H_SIZE + NODE_ID_LEN, GFP_ATOMIC);
 if (!skb)
  return;
 hdr = buf_msg(skb);
 tipc_disc_init_msg(net, skb, mtyp, b);
 msg_set_sugg_node_addr(hdr, sugg_addr);
 msg_set_dest_domain(hdr, dst);
 tipc_bearer_xmit_skb(net, b->identity, skb, maddr);
}
