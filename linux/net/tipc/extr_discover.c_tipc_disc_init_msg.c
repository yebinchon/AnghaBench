
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tipc_net {int net_id; int random; int trial_addr; } ;
struct tipc_msg {int dummy; } ;
struct tipc_bearer {int addr; TYPE_1__* media; int domain; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int (* addr2msg ) (int ,int *) ;} ;


 int LINK_CONFIG ;
 scalar_t__ MAX_H_SIZE ;
 scalar_t__ NODE_ID_LEN ;
 int TIPC_NODE_CAPABILITIES ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int msg_media_addr (struct tipc_msg*) ;
 int msg_set_bc_netid (struct tipc_msg*,int ) ;
 int msg_set_dest_domain (struct tipc_msg*,int ) ;
 int msg_set_node_capabilities (struct tipc_msg*,int ) ;
 int msg_set_node_id (struct tipc_msg*,int ) ;
 int msg_set_node_sig (struct tipc_msg*,int ) ;
 int msg_set_non_seq (struct tipc_msg*,int) ;
 int msg_set_size (struct tipc_msg*,scalar_t__) ;
 int stub1 (int ,int *) ;
 int tipc_msg_init (int ,struct tipc_msg*,int ,int ,scalar_t__,int ) ;
 struct tipc_net* tipc_net (struct net*) ;
 int tipc_own_id (struct net*) ;

__attribute__((used)) static void tipc_disc_init_msg(struct net *net, struct sk_buff *skb,
          u32 mtyp, struct tipc_bearer *b)
{
 struct tipc_net *tn = tipc_net(net);
 u32 dest_domain = b->domain;
 struct tipc_msg *hdr;

 hdr = buf_msg(skb);
 tipc_msg_init(tn->trial_addr, hdr, LINK_CONFIG, mtyp,
        MAX_H_SIZE, dest_domain);
 msg_set_size(hdr, MAX_H_SIZE + NODE_ID_LEN);
 msg_set_non_seq(hdr, 1);
 msg_set_node_sig(hdr, tn->random);
 msg_set_node_capabilities(hdr, TIPC_NODE_CAPABILITIES);
 msg_set_dest_domain(hdr, dest_domain);
 msg_set_bc_netid(hdr, tn->net_id);
 b->media->addr2msg(msg_media_addr(hdr), &b->addr);
 msg_set_node_id(hdr, tipc_own_id(net));
}
