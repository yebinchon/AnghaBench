
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct net {int diag_nlsk; } ;
struct inet_hashinfo {int dummy; } ;
struct inet_diag_req_v2 {int dummy; } ;
struct TYPE_2__ {int portid; int sk; } ;


 int CAP_NET_ADMIN ;
 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct sock*) ;
 int MSG_DONTWAIT ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int PTR_ERR (struct sock*) ;
 int WARN_ON (int) ;
 struct sock* inet_diag_find_one_icsk (struct net*,struct inet_hashinfo*,struct inet_diag_req_v2 const*) ;
 int inet_sk_attr_size (struct sock*,struct inet_diag_req_v2 const*,int) ;
 int netlink_net_capable (struct sk_buff*,int ) ;
 int netlink_unicast (int ,struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int sk_diag_fill (struct sock*,struct sk_buff*,struct inet_diag_req_v2 const*,int ,int ,int ,int ,struct nlmsghdr const*,int) ;
 int sk_user_ns (int ) ;
 int sock_gen_put (struct sock*) ;
 struct net* sock_net (int ) ;

int inet_diag_dump_one_icsk(struct inet_hashinfo *hashinfo,
       struct sk_buff *in_skb,
       const struct nlmsghdr *nlh,
       const struct inet_diag_req_v2 *req)
{
 bool net_admin = netlink_net_capable(in_skb, CAP_NET_ADMIN);
 struct net *net = sock_net(in_skb->sk);
 struct sk_buff *rep;
 struct sock *sk;
 int err;

 sk = inet_diag_find_one_icsk(net, hashinfo, req);
 if (IS_ERR(sk))
  return PTR_ERR(sk);

 rep = nlmsg_new(inet_sk_attr_size(sk, req, net_admin), GFP_KERNEL);
 if (!rep) {
  err = -ENOMEM;
  goto out;
 }

 err = sk_diag_fill(sk, rep, req,
      sk_user_ns(NETLINK_CB(in_skb).sk),
      NETLINK_CB(in_skb).portid,
      nlh->nlmsg_seq, 0, nlh, net_admin);
 if (err < 0) {
  WARN_ON(err == -EMSGSIZE);
  nlmsg_free(rep);
  goto out;
 }
 err = netlink_unicast(net->diag_nlsk, rep, NETLINK_CB(in_skb).portid,
         MSG_DONTWAIT);
 if (err > 0)
  err = 0;

out:
 if (sk)
  sock_gen_put(sk);

 return err;
}
