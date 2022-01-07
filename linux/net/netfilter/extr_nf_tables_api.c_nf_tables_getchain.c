
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
typedef struct nft_table nft_chain ;
struct nfgenmsg {int nfgen_family; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_dump_control {int module; int dump; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (struct nft_table const*) ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 size_t NFTA_CHAIN_NAME ;
 size_t NFTA_CHAIN_TABLE ;
 int NFT_MSG_NEWCHAIN ;
 int NLMSG_GOODSIZE ;
 int NLM_F_DUMP ;
 int NL_SET_BAD_ATTR (struct netlink_ext_ack*,struct nlattr const* const) ;
 int PTR_ERR (struct nft_table const*) ;
 int THIS_MODULE ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int nf_tables_dump_chains ;
 int nf_tables_fill_chain_info (struct sk_buff*,struct net*,int ,int ,int ,int ,int,struct nft_table const*,struct nft_table const*) ;
 struct nft_table* nft_chain_lookup (struct net*,struct nft_table const*,struct nlattr const* const,int ) ;
 int nft_genmask_cur (struct net*) ;
 int nft_netlink_dump_start_rcu (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ;
 struct nft_table* nft_table_lookup (struct net*,struct nlattr const* const,int,int ) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr const*) ;
 int nlmsg_unicast (struct sock*,struct sk_buff*,int ) ;

__attribute__((used)) static int nf_tables_getchain(struct net *net, struct sock *nlsk,
         struct sk_buff *skb, const struct nlmsghdr *nlh,
         const struct nlattr * const nla[],
         struct netlink_ext_ack *extack)
{
 const struct nfgenmsg *nfmsg = nlmsg_data(nlh);
 u8 genmask = nft_genmask_cur(net);
 const struct nft_chain *chain;
 struct nft_table *table;
 struct sk_buff *skb2;
 int family = nfmsg->nfgen_family;
 int err;

 if (nlh->nlmsg_flags & NLM_F_DUMP) {
  struct netlink_dump_control c = {
   .dump = nf_tables_dump_chains,
   .module = THIS_MODULE,
  };

  return nft_netlink_dump_start_rcu(nlsk, skb, nlh, &c);
 }

 table = nft_table_lookup(net, nla[NFTA_CHAIN_TABLE], family, genmask);
 if (IS_ERR(table)) {
  NL_SET_BAD_ATTR(extack, nla[NFTA_CHAIN_TABLE]);
  return PTR_ERR(table);
 }

 chain = nft_chain_lookup(net, table, nla[NFTA_CHAIN_NAME], genmask);
 if (IS_ERR(chain)) {
  NL_SET_BAD_ATTR(extack, nla[NFTA_CHAIN_NAME]);
  return PTR_ERR(chain);
 }

 skb2 = alloc_skb(NLMSG_GOODSIZE, GFP_ATOMIC);
 if (!skb2)
  return -ENOMEM;

 err = nf_tables_fill_chain_info(skb2, net, NETLINK_CB(skb).portid,
     nlh->nlmsg_seq, NFT_MSG_NEWCHAIN, 0,
     family, table, chain);
 if (err < 0)
  goto err;

 return nlmsg_unicast(nlsk, skb2, NETLINK_CB(skb).portid);

err:
 kfree_skb(skb2);
 return err;
}
