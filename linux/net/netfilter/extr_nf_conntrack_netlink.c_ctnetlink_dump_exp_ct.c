
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {int nfgen_family; } ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_dump_control {struct nf_conn* data; int done; int dump; } ;
struct net {int dummy; } ;


 int CTA_EXPECT_MASTER ;
 size_t CTA_EXPECT_ZONE ;
 int ENOENT ;
 int ctnetlink_exp_ct_dump_table ;
 int ctnetlink_exp_done ;
 int ctnetlink_parse_tuple (struct nlattr const* const*,struct nf_conntrack_tuple*,int ,int ,int *) ;
 int ctnetlink_parse_zone (struct nlattr const* const,struct nf_conntrack_zone*) ;
 int netlink_dump_start (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ;
 struct nf_conntrack_tuple_hash* nf_conntrack_find_get (struct net*,struct nf_conntrack_zone*,struct nf_conntrack_tuple*) ;
 int nf_ct_put (struct nf_conn*) ;
 struct nf_conn* nf_ct_tuplehash_to_ctrack (struct nf_conntrack_tuple_hash*) ;
 int nfct_help (struct nf_conn*) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr const*) ;

__attribute__((used)) static int ctnetlink_dump_exp_ct(struct net *net, struct sock *ctnl,
     struct sk_buff *skb,
     const struct nlmsghdr *nlh,
     const struct nlattr * const cda[],
     struct netlink_ext_ack *extack)
{
 int err;
 struct nfgenmsg *nfmsg = nlmsg_data(nlh);
 u_int8_t u3 = nfmsg->nfgen_family;
 struct nf_conntrack_tuple tuple;
 struct nf_conntrack_tuple_hash *h;
 struct nf_conn *ct;
 struct nf_conntrack_zone zone;
 struct netlink_dump_control c = {
  .dump = ctnetlink_exp_ct_dump_table,
  .done = ctnetlink_exp_done,
 };

 err = ctnetlink_parse_tuple(cda, &tuple, CTA_EXPECT_MASTER,
        u3, ((void*)0));
 if (err < 0)
  return err;

 err = ctnetlink_parse_zone(cda[CTA_EXPECT_ZONE], &zone);
 if (err < 0)
  return err;

 h = nf_conntrack_find_get(net, &zone, &tuple);
 if (!h)
  return -ENOENT;

 ct = nf_ct_tuplehash_to_ctrack(h);

 if (!nfct_help(ct)) {
  nf_ct_put(ct);
  return 0;
 }

 c.data = ct;

 err = netlink_dump_start(ctnl, skb, nlh, &c);
 nf_ct_put(ct);

 return err;
}
