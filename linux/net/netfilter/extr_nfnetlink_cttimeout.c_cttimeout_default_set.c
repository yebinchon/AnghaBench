
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nf_conntrack_l4proto {scalar_t__ l4proto; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
typedef scalar_t__ __u8 ;


 size_t CTA_TIMEOUT_DATA ;
 size_t CTA_TIMEOUT_L3PROTO ;
 size_t CTA_TIMEOUT_L4PROTO ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int ctnl_timeout_parse_policy (int *,struct nf_conntrack_l4proto const*,struct net*,struct nlattr const* const) ;
 struct nf_conntrack_l4proto* nf_ct_l4proto_find (scalar_t__) ;
 scalar_t__ nla_get_u8 (struct nlattr const* const) ;

__attribute__((used)) static int cttimeout_default_set(struct net *net, struct sock *ctnl,
     struct sk_buff *skb,
     const struct nlmsghdr *nlh,
     const struct nlattr * const cda[],
     struct netlink_ext_ack *extack)
{
 const struct nf_conntrack_l4proto *l4proto;
 __u8 l4num;
 int ret;

 if (!cda[CTA_TIMEOUT_L3PROTO] ||
     !cda[CTA_TIMEOUT_L4PROTO] ||
     !cda[CTA_TIMEOUT_DATA])
  return -EINVAL;

 l4num = nla_get_u8(cda[CTA_TIMEOUT_L4PROTO]);
 l4proto = nf_ct_l4proto_find(l4num);


 if (l4proto->l4proto != l4num) {
  ret = -EOPNOTSUPP;
  goto err;
 }

 ret = ctnl_timeout_parse_policy(((void*)0), l4proto, net,
     cda[CTA_TIMEOUT_DATA]);
 if (ret < 0)
  goto err;

 return 0;
err:
 return ret;
}
