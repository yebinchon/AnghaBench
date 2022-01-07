
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
struct l2tp_session {int dummy; } ;
struct TYPE_4__ {int portid; } ;
struct TYPE_3__ {int nlmsg_seq; } ;


 int L2TP_CMD_SESSION_GET ;
 TYPE_2__ NETLINK_CB (int ) ;
 int NLM_F_MULTI ;
 scalar_t__ l2tp_nl_session_send (struct sk_buff*,int ,int ,int ,struct l2tp_session*,int ) ;
 int l2tp_session_dec_refcount (struct l2tp_session*) ;
 struct l2tp_session* l2tp_session_get_nth (struct l2tp_tunnel*,int) ;
 int l2tp_tunnel_dec_refcount (struct l2tp_tunnel*) ;
 struct l2tp_tunnel* l2tp_tunnel_get_nth (struct net*,int) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int l2tp_nl_cmd_session_dump(struct sk_buff *skb, struct netlink_callback *cb)
{
 struct net *net = sock_net(skb->sk);
 struct l2tp_session *session;
 struct l2tp_tunnel *tunnel = ((void*)0);
 int ti = cb->args[0];
 int si = cb->args[1];

 for (;;) {
  if (tunnel == ((void*)0)) {
   tunnel = l2tp_tunnel_get_nth(net, ti);
   if (tunnel == ((void*)0))
    goto out;
  }

  session = l2tp_session_get_nth(tunnel, si);
  if (session == ((void*)0)) {
   ti++;
   l2tp_tunnel_dec_refcount(tunnel);
   tunnel = ((void*)0);
   si = 0;
   continue;
  }

  if (l2tp_nl_session_send(skb, NETLINK_CB(cb->skb).portid,
      cb->nlh->nlmsg_seq, NLM_F_MULTI,
      session, L2TP_CMD_SESSION_GET) < 0) {
   l2tp_session_dec_refcount(session);
   l2tp_tunnel_dec_refcount(tunnel);
   break;
  }
  l2tp_session_dec_refcount(session);

  si++;
 }

out:
 cb->args[0] = ti;
 cb->args[1] = si;

 return skb->len;
}
