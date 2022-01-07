
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_type; int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {int nfgen_family; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int portid; } ;




 int EAGAIN ;
 int EINVAL ;
 int ENOBUFS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MSG_DONTWAIT ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NFNL_MSG_COMPAT_GET ;
 int NFNL_MSG_TYPE (int ) ;


 size_t NFTA_COMPAT_NAME ;
 size_t NFTA_COMPAT_REV ;
 size_t NFTA_COMPAT_TYPE ;
 int NLMSG_DEFAULT_SIZE ;
 int THIS_MODULE ;
 int kfree_skb (struct sk_buff*) ;
 int module_put (int ) ;
 int netlink_unicast (struct sock*,struct sk_buff*,int ,int ) ;
 scalar_t__ nfnl_compat_fill_info (struct sk_buff*,int ,int ,int ,int ,int,char const*,int,int) ;
 char* nla_data (struct nlattr const* const) ;
 int nla_get_be32 (struct nlattr const* const) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr const*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 void* ntohl (int ) ;
 int pr_err (char*,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int try_module_get (int ) ;
 int try_then_request_module (int ,char const*,char const*) ;
 int xt_find_revision (int,char const*,void*,int,int*) ;

__attribute__((used)) static int nfnl_compat_get_rcu(struct net *net, struct sock *nfnl,
          struct sk_buff *skb, const struct nlmsghdr *nlh,
          const struct nlattr * const tb[],
          struct netlink_ext_ack *extack)
{
 int ret = 0, target;
 struct nfgenmsg *nfmsg;
 const char *fmt;
 const char *name;
 u32 rev;
 struct sk_buff *skb2;

 if (tb[NFTA_COMPAT_NAME] == ((void*)0) ||
     tb[NFTA_COMPAT_REV] == ((void*)0) ||
     tb[NFTA_COMPAT_TYPE] == ((void*)0))
  return -EINVAL;

 name = nla_data(tb[NFTA_COMPAT_NAME]);
 rev = ntohl(nla_get_be32(tb[NFTA_COMPAT_REV]));
 target = ntohl(nla_get_be32(tb[NFTA_COMPAT_TYPE]));

 nfmsg = nlmsg_data(nlh);

 switch(nfmsg->nfgen_family) {
 case 131:
  fmt = "ipt_%s";
  break;
 case 130:
  fmt = "ip6t_%s";
  break;
 case 128:
  fmt = "ebt_%s";
  break;
 case 129:
  fmt = "arpt_%s";
  break;
 default:
  pr_err("nft_compat: unsupported protocol %d\n",
   nfmsg->nfgen_family);
  return -EINVAL;
 }

 if (!try_module_get(THIS_MODULE))
  return -EINVAL;

 rcu_read_unlock();
 try_then_request_module(xt_find_revision(nfmsg->nfgen_family, name,
       rev, target, &ret),
       fmt, name);
 if (ret < 0)
  goto out_put;

 skb2 = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (skb2 == ((void*)0)) {
  ret = -ENOMEM;
  goto out_put;
 }


 if (nfnl_compat_fill_info(skb2, NETLINK_CB(skb).portid,
      nlh->nlmsg_seq,
      NFNL_MSG_TYPE(nlh->nlmsg_type),
      NFNL_MSG_COMPAT_GET,
      nfmsg->nfgen_family,
      name, ret, target) <= 0) {
  kfree_skb(skb2);
  goto out_put;
 }

 ret = netlink_unicast(nfnl, skb2, NETLINK_CB(skb).portid,
    MSG_DONTWAIT);
 if (ret > 0)
  ret = 0;
out_put:
 rcu_read_lock();
 module_put(THIS_MODULE);
 return ret == -EAGAIN ? -ENOBUFS : ret;
}
