
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct l2tp_tunnel {int dummy; } ;
struct genl_info {int snd_portid; int snd_seq; int * attrs; } ;


 int EINVAL ;
 int ENOBUFS ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t L2TP_ATTR_CONN_ID ;
 int L2TP_CMD_TUNNEL_GET ;
 int NLMSG_DEFAULT_SIZE ;
 int NLM_F_ACK ;
 struct net* genl_info_net (struct genl_info*) ;
 int genlmsg_unicast (struct net*,struct sk_buff*,int ) ;
 int l2tp_nl_tunnel_send (struct sk_buff*,int ,int ,int ,struct l2tp_tunnel*,int ) ;
 int l2tp_tunnel_dec_refcount (struct l2tp_tunnel*) ;
 struct l2tp_tunnel* l2tp_tunnel_get (struct net*,int ) ;
 int nla_get_u32 (int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static int l2tp_nl_cmd_tunnel_get(struct sk_buff *skb, struct genl_info *info)
{
 struct l2tp_tunnel *tunnel;
 struct sk_buff *msg;
 u32 tunnel_id;
 int ret = -ENOBUFS;
 struct net *net = genl_info_net(info);

 if (!info->attrs[L2TP_ATTR_CONN_ID]) {
  ret = -EINVAL;
  goto err;
 }

 tunnel_id = nla_get_u32(info->attrs[L2TP_ATTR_CONN_ID]);

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg) {
  ret = -ENOMEM;
  goto err;
 }

 tunnel = l2tp_tunnel_get(net, tunnel_id);
 if (!tunnel) {
  ret = -ENODEV;
  goto err_nlmsg;
 }

 ret = l2tp_nl_tunnel_send(msg, info->snd_portid, info->snd_seq,
      NLM_F_ACK, tunnel, L2TP_CMD_TUNNEL_GET);
 if (ret < 0)
  goto err_nlmsg_tunnel;

 l2tp_tunnel_dec_refcount(tunnel);

 return genlmsg_unicast(net, msg, info->snd_portid);

err_nlmsg_tunnel:
 l2tp_tunnel_dec_refcount(tunnel);
err_nlmsg:
 nlmsg_free(msg);
err:
 return ret;
}
