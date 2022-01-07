
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
typedef struct nft_table const nft_table ;
typedef struct nft_table nft_rule ;
typedef struct nft_table nft_chain ;
struct nfgenmsg {int nfgen_family; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_dump_control {void* data; int module; int done; int dump; int start; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (struct nft_table const*) ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 size_t NFTA_RULE_CHAIN ;
 size_t NFTA_RULE_HANDLE ;
 size_t NFTA_RULE_TABLE ;
 int NFT_MSG_NEWRULE ;
 int NLMSG_GOODSIZE ;
 int NLM_F_DUMP ;
 int NL_SET_BAD_ATTR (struct netlink_ext_ack*,struct nlattr const* const) ;
 int PTR_ERR (struct nft_table const*) ;
 int THIS_MODULE ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int nf_tables_dump_rules ;
 int nf_tables_dump_rules_done ;
 int nf_tables_dump_rules_start ;
 int nf_tables_fill_rule_info (struct sk_buff*,struct net*,int ,int ,int ,int ,int,struct nft_table const*,struct nft_table const*,struct nft_table const*,int *) ;
 struct nft_table* nft_chain_lookup (struct net*,struct nft_table const*,struct nlattr const* const,int ) ;
 int nft_genmask_cur (struct net*) ;
 int nft_netlink_dump_start_rcu (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ;
 struct nft_table* nft_rule_lookup (struct nft_table const*,struct nlattr const* const) ;
 struct nft_table* nft_table_lookup (struct net*,struct nlattr const* const,int,int ) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr const*) ;
 int nlmsg_unicast (struct sock*,struct sk_buff*,int ) ;

__attribute__((used)) static int nf_tables_getrule(struct net *net, struct sock *nlsk,
        struct sk_buff *skb, const struct nlmsghdr *nlh,
        const struct nlattr * const nla[],
        struct netlink_ext_ack *extack)
{
 const struct nfgenmsg *nfmsg = nlmsg_data(nlh);
 u8 genmask = nft_genmask_cur(net);
 const struct nft_chain *chain;
 const struct nft_rule *rule;
 struct nft_table *table;
 struct sk_buff *skb2;
 int family = nfmsg->nfgen_family;
 int err;

 if (nlh->nlmsg_flags & NLM_F_DUMP) {
  struct netlink_dump_control c = {
   .start= nf_tables_dump_rules_start,
   .dump = nf_tables_dump_rules,
   .done = nf_tables_dump_rules_done,
   .module = THIS_MODULE,
   .data = (void *)nla,
  };

  return nft_netlink_dump_start_rcu(nlsk, skb, nlh, &c);
 }

 table = nft_table_lookup(net, nla[NFTA_RULE_TABLE], family, genmask);
 if (IS_ERR(table)) {
  NL_SET_BAD_ATTR(extack, nla[NFTA_RULE_TABLE]);
  return PTR_ERR(table);
 }

 chain = nft_chain_lookup(net, table, nla[NFTA_RULE_CHAIN], genmask);
 if (IS_ERR(chain)) {
  NL_SET_BAD_ATTR(extack, nla[NFTA_RULE_CHAIN]);
  return PTR_ERR(chain);
 }

 rule = nft_rule_lookup(chain, nla[NFTA_RULE_HANDLE]);
 if (IS_ERR(rule)) {
  NL_SET_BAD_ATTR(extack, nla[NFTA_RULE_HANDLE]);
  return PTR_ERR(rule);
 }

 skb2 = alloc_skb(NLMSG_GOODSIZE, GFP_ATOMIC);
 if (!skb2)
  return -ENOMEM;

 err = nf_tables_fill_rule_info(skb2, net, NETLINK_CB(skb).portid,
           nlh->nlmsg_seq, NFT_MSG_NEWRULE, 0,
           family, table, chain, rule, ((void*)0));
 if (err < 0)
  goto err;

 return nlmsg_unicast(nlsk, skb2, NETLINK_CB(skb).portid);

err:
 kfree_skb(skb2);
 return err;
}
