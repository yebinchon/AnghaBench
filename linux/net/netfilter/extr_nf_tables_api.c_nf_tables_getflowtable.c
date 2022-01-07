
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
struct nft_table {int dummy; } ;
typedef struct nft_table const nft_flowtable ;
struct nfgenmsg {int nfgen_family; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_dump_control {void* data; int module; int done; int dump; int start; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (struct nft_table const*) ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 size_t NFTA_FLOWTABLE_NAME ;
 size_t NFTA_FLOWTABLE_TABLE ;
 int NFT_MSG_NEWFLOWTABLE ;
 int NLMSG_GOODSIZE ;
 int NLM_F_DUMP ;
 int PTR_ERR (struct nft_table const*) ;
 int THIS_MODULE ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int nf_tables_dump_flowtable ;
 int nf_tables_dump_flowtable_done ;
 int nf_tables_dump_flowtable_start ;
 int nf_tables_fill_flowtable_info (struct sk_buff*,struct net*,int ,int ,int ,int ,int,struct nft_table const*) ;
 struct nft_table* nft_flowtable_lookup (struct nft_table const*,struct nlattr const* const,int ) ;
 int nft_genmask_cur (struct net*) ;
 int nft_netlink_dump_start_rcu (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ;
 struct nft_table* nft_table_lookup (struct net*,struct nlattr const* const,int,int ) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr const*) ;
 int nlmsg_unicast (struct sock*,struct sk_buff*,int ) ;

__attribute__((used)) static int nf_tables_getflowtable(struct net *net, struct sock *nlsk,
      struct sk_buff *skb,
      const struct nlmsghdr *nlh,
      const struct nlattr * const nla[],
      struct netlink_ext_ack *extack)
{
 const struct nfgenmsg *nfmsg = nlmsg_data(nlh);
 u8 genmask = nft_genmask_cur(net);
 int family = nfmsg->nfgen_family;
 struct nft_flowtable *flowtable;
 const struct nft_table *table;
 struct sk_buff *skb2;
 int err;

 if (nlh->nlmsg_flags & NLM_F_DUMP) {
  struct netlink_dump_control c = {
   .start = nf_tables_dump_flowtable_start,
   .dump = nf_tables_dump_flowtable,
   .done = nf_tables_dump_flowtable_done,
   .module = THIS_MODULE,
   .data = (void *)nla,
  };

  return nft_netlink_dump_start_rcu(nlsk, skb, nlh, &c);
 }

 if (!nla[NFTA_FLOWTABLE_NAME])
  return -EINVAL;

 table = nft_table_lookup(net, nla[NFTA_FLOWTABLE_TABLE], family,
     genmask);
 if (IS_ERR(table))
  return PTR_ERR(table);

 flowtable = nft_flowtable_lookup(table, nla[NFTA_FLOWTABLE_NAME],
      genmask);
 if (IS_ERR(flowtable))
  return PTR_ERR(flowtable);

 skb2 = alloc_skb(NLMSG_GOODSIZE, GFP_ATOMIC);
 if (!skb2)
  return -ENOMEM;

 err = nf_tables_fill_flowtable_info(skb2, net, NETLINK_CB(skb).portid,
         nlh->nlmsg_seq,
         NFT_MSG_NEWFLOWTABLE, 0, family,
         flowtable);
 if (err < 0)
  goto err;

 return nlmsg_unicast(nlsk, skb2, NETLINK_CB(skb).portid);
err:
 kfree_skb(skb2);
 return err;
}
