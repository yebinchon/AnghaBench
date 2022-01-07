
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; int sk; } ;
struct netlink_callback {int* args; TYPE_1__* nlh; int skb; } ;
struct net {int dummy; } ;
struct l2tp_tunnel {int dummy; } ;
struct TYPE_4__ {int portid; } ;
struct TYPE_3__ {int nlmsg_seq; } ;


 int L2TP_CMD_TUNNEL_GET ;
 TYPE_2__ NETLINK_CB (int ) ;
 int NLM_F_MULTI ;
 scalar_t__ l2tp_nl_tunnel_send (struct sk_buff*,int ,int ,int ,struct l2tp_tunnel*,int ) ;
 int l2tp_tunnel_dec_refcount (struct l2tp_tunnel*) ;
 struct l2tp_tunnel* l2tp_tunnel_get_nth (struct net*,int) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int l2tp_nl_cmd_tunnel_dump(struct sk_buff *skb, struct netlink_callback *cb)
{
 int ti = cb->args[0];
 struct l2tp_tunnel *tunnel;
 struct net *net = sock_net(skb->sk);

 for (;;) {
  tunnel = l2tp_tunnel_get_nth(net, ti);
  if (tunnel == ((void*)0))
   goto out;

  if (l2tp_nl_tunnel_send(skb, NETLINK_CB(cb->skb).portid,
     cb->nlh->nlmsg_seq, NLM_F_MULTI,
     tunnel, L2TP_CMD_TUNNEL_GET) < 0) {
   l2tp_tunnel_dec_refcount(tunnel);
   goto out;
  }
  l2tp_tunnel_dec_refcount(tunnel);

  ti++;
 }

out:
 cb->args[0] = ti;

 return skb->len;
}
