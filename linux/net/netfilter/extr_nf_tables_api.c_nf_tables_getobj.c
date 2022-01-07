
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; int nlmsg_seq; int nlmsg_type; } ;
struct nlattr {int dummy; } ;
struct nft_table {int dummy; } ;
typedef struct nft_table const nft_object ;
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
 scalar_t__ NFNL_MSG_TYPE (int ) ;
 size_t NFTA_OBJ_NAME ;
 size_t NFTA_OBJ_TABLE ;
 size_t NFTA_OBJ_TYPE ;
 scalar_t__ NFT_MSG_GETOBJ_RESET ;
 int NFT_MSG_NEWOBJ ;
 int NLMSG_GOODSIZE ;
 int NLM_F_DUMP ;
 int NL_SET_BAD_ATTR (struct netlink_ext_ack*,struct nlattr const* const) ;
 int PTR_ERR (struct nft_table const*) ;
 int THIS_MODULE ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int nf_tables_dump_obj ;
 int nf_tables_dump_obj_done ;
 int nf_tables_dump_obj_start ;
 int nf_tables_fill_obj_info (struct sk_buff*,struct net*,int ,int ,int ,int ,int,struct nft_table const*,struct nft_table const*,int) ;
 int nft_genmask_cur (struct net*) ;
 int nft_netlink_dump_start_rcu (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ;
 struct nft_table* nft_obj_lookup (struct net*,struct nft_table const*,struct nlattr const* const,int ,int ) ;
 struct nft_table* nft_table_lookup (struct net*,struct nlattr const* const,int,int ) ;
 int nla_get_be32 (struct nlattr const* const) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr const*) ;
 int nlmsg_unicast (struct sock*,struct sk_buff*,int ) ;
 int ntohl (int ) ;

__attribute__((used)) static int nf_tables_getobj(struct net *net, struct sock *nlsk,
       struct sk_buff *skb, const struct nlmsghdr *nlh,
       const struct nlattr * const nla[],
       struct netlink_ext_ack *extack)
{
 const struct nfgenmsg *nfmsg = nlmsg_data(nlh);
 u8 genmask = nft_genmask_cur(net);
 int family = nfmsg->nfgen_family;
 const struct nft_table *table;
 struct nft_object *obj;
 struct sk_buff *skb2;
 bool reset = 0;
 u32 objtype;
 int err;

 if (nlh->nlmsg_flags & NLM_F_DUMP) {
  struct netlink_dump_control c = {
   .start = nf_tables_dump_obj_start,
   .dump = nf_tables_dump_obj,
   .done = nf_tables_dump_obj_done,
   .module = THIS_MODULE,
   .data = (void *)nla,
  };

  return nft_netlink_dump_start_rcu(nlsk, skb, nlh, &c);
 }

 if (!nla[NFTA_OBJ_NAME] ||
     !nla[NFTA_OBJ_TYPE])
  return -EINVAL;

 table = nft_table_lookup(net, nla[NFTA_OBJ_TABLE], family, genmask);
 if (IS_ERR(table)) {
  NL_SET_BAD_ATTR(extack, nla[NFTA_OBJ_TABLE]);
  return PTR_ERR(table);
 }

 objtype = ntohl(nla_get_be32(nla[NFTA_OBJ_TYPE]));
 obj = nft_obj_lookup(net, table, nla[NFTA_OBJ_NAME], objtype, genmask);
 if (IS_ERR(obj)) {
  NL_SET_BAD_ATTR(extack, nla[NFTA_OBJ_NAME]);
  return PTR_ERR(obj);
 }

 skb2 = alloc_skb(NLMSG_GOODSIZE, GFP_ATOMIC);
 if (!skb2)
  return -ENOMEM;

 if (NFNL_MSG_TYPE(nlh->nlmsg_type) == NFT_MSG_GETOBJ_RESET)
  reset = 1;

 err = nf_tables_fill_obj_info(skb2, net, NETLINK_CB(skb).portid,
          nlh->nlmsg_seq, NFT_MSG_NEWOBJ, 0,
          family, table, obj, reset);
 if (err < 0)
  goto err;

 return nlmsg_unicast(nlsk, skb2, NETLINK_CB(skb).portid);
err:
 kfree_skb(skb2);
 return err;
}
