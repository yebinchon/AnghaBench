
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {int nfgen_family; } ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_expect {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 size_t CTA_EXPECT_MASK ;
 size_t CTA_EXPECT_MASTER ;
 size_t CTA_EXPECT_TUPLE ;
 size_t CTA_EXPECT_ZONE ;
 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NLM_F_CREATE ;
 int NLM_F_EXCL ;
 struct nf_conntrack_expect* __nf_ct_expect_find (struct net*,struct nf_conntrack_zone*,struct nf_conntrack_tuple*) ;
 int ctnetlink_change_expect (struct nf_conntrack_expect*,struct nlattr const* const*) ;
 int ctnetlink_create_expect (struct net*,struct nf_conntrack_zone*,struct nlattr const* const*,int ,int ,int ) ;
 int ctnetlink_parse_tuple (struct nlattr const* const*,struct nf_conntrack_tuple*,size_t,int ,int *) ;
 int ctnetlink_parse_zone (struct nlattr const* const,struct nf_conntrack_zone*) ;
 int nf_conntrack_expect_lock ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr const*) ;
 int nlmsg_report (struct nlmsghdr const*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ctnetlink_new_expect(struct net *net, struct sock *ctnl,
    struct sk_buff *skb, const struct nlmsghdr *nlh,
    const struct nlattr * const cda[],
    struct netlink_ext_ack *extack)
{
 struct nf_conntrack_tuple tuple;
 struct nf_conntrack_expect *exp;
 struct nfgenmsg *nfmsg = nlmsg_data(nlh);
 u_int8_t u3 = nfmsg->nfgen_family;
 struct nf_conntrack_zone zone;
 int err;

 if (!cda[CTA_EXPECT_TUPLE]
     || !cda[CTA_EXPECT_MASK]
     || !cda[CTA_EXPECT_MASTER])
  return -EINVAL;

 err = ctnetlink_parse_zone(cda[CTA_EXPECT_ZONE], &zone);
 if (err < 0)
  return err;

 err = ctnetlink_parse_tuple(cda, &tuple, CTA_EXPECT_TUPLE,
        u3, ((void*)0));
 if (err < 0)
  return err;

 spin_lock_bh(&nf_conntrack_expect_lock);
 exp = __nf_ct_expect_find(net, &zone, &tuple);
 if (!exp) {
  spin_unlock_bh(&nf_conntrack_expect_lock);
  err = -ENOENT;
  if (nlh->nlmsg_flags & NLM_F_CREATE) {
   err = ctnetlink_create_expect(net, &zone, cda, u3,
            NETLINK_CB(skb).portid,
            nlmsg_report(nlh));
  }
  return err;
 }

 err = -EEXIST;
 if (!(nlh->nlmsg_flags & NLM_F_EXCL))
  err = ctnetlink_change_expect(exp, cda);
 spin_unlock_bh(&nf_conntrack_expect_lock);

 return err;
}
