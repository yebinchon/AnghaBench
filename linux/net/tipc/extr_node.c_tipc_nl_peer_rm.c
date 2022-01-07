
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_node {scalar_t__ state; } ;
struct tipc_net {int node_list_lock; } ;
struct sk_buff {int sk; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {int extack; int * attrs; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOTSUPP ;
 int ENXIO ;
 scalar_t__ SELF_DOWN_PEER_DOWN ;
 scalar_t__ SELF_DOWN_PEER_LEAVING ;
 size_t TIPC_NLA_NET ;
 size_t TIPC_NLA_NET_ADDR ;
 int TIPC_NLA_NET_MAX ;
 scalar_t__ in_own_node (struct net*,int ) ;
 struct tipc_net* net_generic (struct net*,int ) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,int ,int ,int ) ;
 struct net* sock_net (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_net_id ;
 int tipc_nl_net_policy ;
 int tipc_node_clear_links (struct tipc_node*) ;
 int tipc_node_delete (struct tipc_node*) ;
 struct tipc_node* tipc_node_find (struct net*,int ) ;
 int tipc_node_put (struct tipc_node*) ;
 int tipc_node_write_lock (struct tipc_node*) ;
 int tipc_node_write_unlock (struct tipc_node*) ;

int tipc_nl_peer_rm(struct sk_buff *skb, struct genl_info *info)
{
 struct net *net = sock_net(skb->sk);
 struct tipc_net *tn = net_generic(net, tipc_net_id);
 struct nlattr *attrs[TIPC_NLA_NET_MAX + 1];
 struct tipc_node *peer;
 u32 addr;
 int err;


 if (!info->attrs[TIPC_NLA_NET])
  return -EINVAL;

 err = nla_parse_nested_deprecated(attrs, TIPC_NLA_NET_MAX,
       info->attrs[TIPC_NLA_NET],
       tipc_nl_net_policy, info->extack);
 if (err)
  return err;

 if (!attrs[TIPC_NLA_NET_ADDR])
  return -EINVAL;

 addr = nla_get_u32(attrs[TIPC_NLA_NET_ADDR]);

 if (in_own_node(net, addr))
  return -ENOTSUPP;

 spin_lock_bh(&tn->node_list_lock);
 peer = tipc_node_find(net, addr);
 if (!peer) {
  spin_unlock_bh(&tn->node_list_lock);
  return -ENXIO;
 }

 tipc_node_write_lock(peer);
 if (peer->state != SELF_DOWN_PEER_DOWN &&
     peer->state != SELF_DOWN_PEER_LEAVING) {
  tipc_node_write_unlock(peer);
  err = -EBUSY;
  goto err_out;
 }

 tipc_node_clear_links(peer);
 tipc_node_write_unlock(peer);
 tipc_node_delete(peer);

 err = 0;
err_out:
 tipc_node_put(peer);
 spin_unlock_bh(&tn->node_list_lock);

 return err;
}
