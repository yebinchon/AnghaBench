
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_node {TYPE_1__* links; } ;
struct tipc_nl_msg {int skb; int seq; int portid; } ;
struct tipc_link {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {int extack; int * attrs; int snd_seq; int snd_portid; } ;
struct TYPE_2__ {struct tipc_link* link; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NLMSG_GOODSIZE ;
 size_t TIPC_NLA_LINK ;
 int TIPC_NLA_LINK_MAX ;
 size_t TIPC_NLA_LINK_NAME ;
 int __tipc_nl_add_link (struct net*,struct tipc_nl_msg*,struct tipc_link*,int ) ;
 struct net* genl_info_net (struct genl_info*) ;
 int genlmsg_reply (int ,struct genl_info*) ;
 char* nla_data (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,int ,int ,int ) ;
 int nlmsg_free (int ) ;
 int nlmsg_new (int ,int ) ;
 scalar_t__ strcmp (char*,int ) ;
 int tipc_bclink_name ;
 int tipc_nl_add_bc_link (struct net*,struct tipc_nl_msg*) ;
 int tipc_nl_link_policy ;
 struct tipc_node* tipc_node_find_by_name (struct net*,char*,int*) ;
 int tipc_node_read_lock (struct tipc_node*) ;
 int tipc_node_read_unlock (struct tipc_node*) ;

int tipc_nl_node_get_link(struct sk_buff *skb, struct genl_info *info)
{
 struct net *net = genl_info_net(info);
 struct nlattr *attrs[TIPC_NLA_LINK_MAX + 1];
 struct tipc_nl_msg msg;
 char *name;
 int err;

 msg.portid = info->snd_portid;
 msg.seq = info->snd_seq;

 if (!info->attrs[TIPC_NLA_LINK])
  return -EINVAL;

 err = nla_parse_nested_deprecated(attrs, TIPC_NLA_LINK_MAX,
       info->attrs[TIPC_NLA_LINK],
       tipc_nl_link_policy, info->extack);
 if (err)
  return err;

 if (!attrs[TIPC_NLA_LINK_NAME])
  return -EINVAL;

 name = nla_data(attrs[TIPC_NLA_LINK_NAME]);

 msg.skb = nlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
 if (!msg.skb)
  return -ENOMEM;

 if (strcmp(name, tipc_bclink_name) == 0) {
  err = tipc_nl_add_bc_link(net, &msg);
  if (err)
   goto err_free;
 } else {
  int bearer_id;
  struct tipc_node *node;
  struct tipc_link *link;

  node = tipc_node_find_by_name(net, name, &bearer_id);
  if (!node) {
   err = -EINVAL;
   goto err_free;
  }

  tipc_node_read_lock(node);
  link = node->links[bearer_id].link;
  if (!link) {
   tipc_node_read_unlock(node);
   err = -EINVAL;
   goto err_free;
  }

  err = __tipc_nl_add_link(net, &msg, link, 0);
  tipc_node_read_unlock(node);
  if (err)
   goto err_free;
 }

 return genlmsg_reply(msg.skb, info);

err_free:
 nlmsg_free(msg.skb);
 return err;
}
