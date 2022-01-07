
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef scalar_t__ u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {int nfgen_family; } ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_expect {int timeout; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {int portid; } ;


 size_t CTA_EXPECT_HELP_NAME ;
 size_t CTA_EXPECT_ID ;
 size_t CTA_EXPECT_TUPLE ;
 size_t CTA_EXPECT_ZONE ;
 int ENOENT ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int ctnetlink_parse_tuple (struct nlattr const* const*,struct nf_conntrack_tuple*,size_t,int ,int *) ;
 int ctnetlink_parse_zone (struct nlattr const* const,struct nf_conntrack_zone*) ;
 scalar_t__ del_timer (int *) ;
 int expect_iter_all ;
 int expect_iter_name ;
 int nf_conntrack_expect_lock ;
 struct nf_conntrack_expect* nf_ct_expect_find_get (struct net*,struct nf_conntrack_zone*,struct nf_conntrack_tuple*) ;
 int nf_ct_expect_iterate_net (struct net*,int ,char*,int ,int ) ;
 int nf_ct_expect_put (struct nf_conntrack_expect*) ;
 int nf_ct_unlink_expect_report (struct nf_conntrack_expect*,int ,int ) ;
 char* nla_data (struct nlattr const* const) ;
 int nla_get_be32 (struct nlattr const* const) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr const*) ;
 int nlmsg_report (struct nlmsghdr const*) ;
 scalar_t__ ntohl (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ctnetlink_del_expect(struct net *net, struct sock *ctnl,
    struct sk_buff *skb, const struct nlmsghdr *nlh,
    const struct nlattr * const cda[],
    struct netlink_ext_ack *extack)
{
 struct nf_conntrack_expect *exp;
 struct nf_conntrack_tuple tuple;
 struct nfgenmsg *nfmsg = nlmsg_data(nlh);
 u_int8_t u3 = nfmsg->nfgen_family;
 struct nf_conntrack_zone zone;
 int err;

 if (cda[CTA_EXPECT_TUPLE]) {

  err = ctnetlink_parse_zone(cda[CTA_EXPECT_ZONE], &zone);
  if (err < 0)
   return err;

  err = ctnetlink_parse_tuple(cda, &tuple, CTA_EXPECT_TUPLE,
         u3, ((void*)0));
  if (err < 0)
   return err;


  exp = nf_ct_expect_find_get(net, &zone, &tuple);
  if (!exp)
   return -ENOENT;

  if (cda[CTA_EXPECT_ID]) {
   __be32 id = nla_get_be32(cda[CTA_EXPECT_ID]);
   if (ntohl(id) != (u32)(unsigned long)exp) {
    nf_ct_expect_put(exp);
    return -ENOENT;
   }
  }


  spin_lock_bh(&nf_conntrack_expect_lock);
  if (del_timer(&exp->timeout)) {
   nf_ct_unlink_expect_report(exp, NETLINK_CB(skb).portid,
         nlmsg_report(nlh));
   nf_ct_expect_put(exp);
  }
  spin_unlock_bh(&nf_conntrack_expect_lock);


  nf_ct_expect_put(exp);
 } else if (cda[CTA_EXPECT_HELP_NAME]) {
  char *name = nla_data(cda[CTA_EXPECT_HELP_NAME]);

  nf_ct_expect_iterate_net(net, expect_iter_name, name,
      NETLINK_CB(skb).portid,
      nlmsg_report(nlh));
 } else {

  nf_ct_expect_iterate_net(net, expect_iter_all, ((void*)0),
      NETLINK_CB(skb).portid,
      nlmsg_report(nlh));
 }

 return 0;
}
