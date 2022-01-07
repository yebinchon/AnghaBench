
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct nft_set {int dummy; } ;
struct nft_ctx {int table; } ;
struct nfgenmsg {scalar_t__ nfgen_family; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_dump_control {int module; struct nft_ctx* data; int done; int dump; int start; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 int EAFNOSUPPORT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (struct nft_set const*) ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 scalar_t__ NFPROTO_UNSPEC ;
 size_t NFTA_SET_NAME ;
 size_t NFTA_SET_TABLE ;
 int NFT_MSG_NEWSET ;
 int NLMSG_GOODSIZE ;
 int NLM_F_DUMP ;
 int PTR_ERR (struct nft_set const*) ;
 int THIS_MODULE ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int nf_tables_dump_sets ;
 int nf_tables_dump_sets_done ;
 int nf_tables_dump_sets_start ;
 int nf_tables_fill_set (struct sk_buff*,struct nft_ctx*,struct nft_set const*,int ,int ) ;
 int nft_ctx_init_from_setattr (struct nft_ctx*,struct net*,struct sk_buff*,struct nlmsghdr const*,struct nlattr const* const*,struct netlink_ext_ack*,int ) ;
 int nft_genmask_cur (struct net*) ;
 int nft_netlink_dump_start_rcu (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ;
 struct nft_set* nft_set_lookup (int ,struct nlattr const* const,int ) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr const*) ;
 int nlmsg_unicast (struct sock*,struct sk_buff*,int ) ;

__attribute__((used)) static int nf_tables_getset(struct net *net, struct sock *nlsk,
       struct sk_buff *skb, const struct nlmsghdr *nlh,
       const struct nlattr * const nla[],
       struct netlink_ext_ack *extack)
{
 u8 genmask = nft_genmask_cur(net);
 const struct nft_set *set;
 struct nft_ctx ctx;
 struct sk_buff *skb2;
 const struct nfgenmsg *nfmsg = nlmsg_data(nlh);
 int err;


 err = nft_ctx_init_from_setattr(&ctx, net, skb, nlh, nla, extack,
     genmask);
 if (err < 0)
  return err;

 if (nlh->nlmsg_flags & NLM_F_DUMP) {
  struct netlink_dump_control c = {
   .start = nf_tables_dump_sets_start,
   .dump = nf_tables_dump_sets,
   .done = nf_tables_dump_sets_done,
   .data = &ctx,
   .module = THIS_MODULE,
  };

  return nft_netlink_dump_start_rcu(nlsk, skb, nlh, &c);
 }


 if (nfmsg->nfgen_family == NFPROTO_UNSPEC)
  return -EAFNOSUPPORT;
 if (!nla[NFTA_SET_TABLE])
  return -EINVAL;

 set = nft_set_lookup(ctx.table, nla[NFTA_SET_NAME], genmask);
 if (IS_ERR(set))
  return PTR_ERR(set);

 skb2 = alloc_skb(NLMSG_GOODSIZE, GFP_ATOMIC);
 if (skb2 == ((void*)0))
  return -ENOMEM;

 err = nf_tables_fill_set(skb2, &ctx, set, NFT_MSG_NEWSET, 0);
 if (err < 0)
  goto err;

 return nlmsg_unicast(nlsk, skb2, NETLINK_CB(skb).portid);

err:
 kfree_skb(skb2);
 return err;
}
