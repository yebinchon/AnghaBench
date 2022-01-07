
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_sock {int sk; } ;
struct sk_buff {int len; int sk; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int* args; int nlh; } ;
struct net {int dummy; } ;


 int EINVAL ;
 size_t TIPC_NLA_SOCK ;
 int TIPC_NLA_SOCK_MAX ;
 size_t TIPC_NLA_SOCK_REF ;
 int __tipc_nl_list_sk_publ (struct sk_buff*,struct netlink_callback*,struct tipc_sock*,int*) ;
 int lock_sock (int *) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 int release_sock (int *) ;
 struct net* sock_net (int ) ;
 int sock_put (int *) ;
 int tipc_nl_sock_policy ;
 int tipc_nlmsg_parse (int ,struct nlattr***) ;
 struct tipc_sock* tipc_sk_lookup (struct net*,int) ;

int tipc_nl_publ_dump(struct sk_buff *skb, struct netlink_callback *cb)
{
 int err;
 u32 tsk_portid = cb->args[0];
 u32 last_publ = cb->args[1];
 u32 done = cb->args[2];
 struct net *net = sock_net(skb->sk);
 struct tipc_sock *tsk;

 if (!tsk_portid) {
  struct nlattr **attrs;
  struct nlattr *sock[TIPC_NLA_SOCK_MAX + 1];

  err = tipc_nlmsg_parse(cb->nlh, &attrs);
  if (err)
   return err;

  if (!attrs[TIPC_NLA_SOCK])
   return -EINVAL;

  err = nla_parse_nested_deprecated(sock, TIPC_NLA_SOCK_MAX,
        attrs[TIPC_NLA_SOCK],
        tipc_nl_sock_policy, ((void*)0));
  if (err)
   return err;

  if (!sock[TIPC_NLA_SOCK_REF])
   return -EINVAL;

  tsk_portid = nla_get_u32(sock[TIPC_NLA_SOCK_REF]);
 }

 if (done)
  return 0;

 tsk = tipc_sk_lookup(net, tsk_portid);
 if (!tsk)
  return -EINVAL;

 lock_sock(&tsk->sk);
 err = __tipc_nl_list_sk_publ(skb, cb, tsk, &last_publ);
 if (!err)
  done = 1;
 release_sock(&tsk->sk);
 sock_put(&tsk->sk);

 cb->args[0] = tsk_portid;
 cb->args[1] = last_publ;
 cb->args[2] = done;

 return skb->len;
}
