
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_nl_msg {int skb; int seq; int portid; } ;
struct sk_buff {int sk; } ;
struct net {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NLMSG_GOODSIZE ;
 int __tipc_nl_add_monitor_prop (struct net*,struct tipc_nl_msg*) ;
 int genlmsg_reply (int ,struct genl_info*) ;
 int nlmsg_free (int ) ;
 int nlmsg_new (int ,int ) ;
 struct net* sock_net (int ) ;

int tipc_nl_node_get_monitor(struct sk_buff *skb, struct genl_info *info)
{
 struct net *net = sock_net(skb->sk);
 struct tipc_nl_msg msg;
 int err;

 msg.skb = nlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
 if (!msg.skb)
  return -ENOMEM;
 msg.portid = info->snd_portid;
 msg.seq = info->snd_seq;

 err = __tipc_nl_add_monitor_prop(net, &msg);
 if (err) {
  nlmsg_free(msg.skb);
  return err;
 }

 return genlmsg_reply(msg.skb, info);
}
