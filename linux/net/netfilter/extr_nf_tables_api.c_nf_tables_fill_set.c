
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nft_set {int flags; int ktype; int klen; int dtype; int dlen; int objtype; int gc_int; scalar_t__ policy; int size; int udata; int udlen; scalar_t__ timeout; int handle; int name; } ;
struct nft_ctx {TYPE_3__* table; TYPE_2__* net; int family; int seq; int portid; } ;
struct nfgenmsg {int res_id; int version; int nfgen_family; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_4__ {int base_seq; } ;
struct TYPE_5__ {TYPE_1__ nft; } ;


 int NFNETLINK_V0 ;
 int NFNL_SUBSYS_NFTABLES ;
 int NFTA_SET_DATA_LEN ;
 int NFTA_SET_DATA_TYPE ;
 int NFTA_SET_DESC ;
 int NFTA_SET_DESC_SIZE ;
 int NFTA_SET_FLAGS ;
 int NFTA_SET_GC_INTERVAL ;
 int NFTA_SET_HANDLE ;
 int NFTA_SET_KEY_LEN ;
 int NFTA_SET_KEY_TYPE ;
 int NFTA_SET_NAME ;
 int NFTA_SET_OBJ_TYPE ;
 int NFTA_SET_PAD ;
 int NFTA_SET_POLICY ;
 int NFTA_SET_TABLE ;
 int NFTA_SET_TIMEOUT ;
 int NFTA_SET_USERDATA ;
 int NFT_SET_MAP ;
 int NFT_SET_OBJECT ;
 scalar_t__ NFT_SET_POL_PERFORMANCE ;
 int cpu_to_be64 (int ) ;
 int htonl (int) ;
 int htons (int) ;
 int nf_jiffies64_to_msecs (scalar_t__) ;
 int nfnl_msg_type (int ,int ) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_be64 (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 int nlmsg_trim (struct sk_buff*,struct nlmsghdr*) ;

__attribute__((used)) static int nf_tables_fill_set(struct sk_buff *skb, const struct nft_ctx *ctx,
         const struct nft_set *set, u16 event, u16 flags)
{
 struct nfgenmsg *nfmsg;
 struct nlmsghdr *nlh;
 struct nlattr *desc;
 u32 portid = ctx->portid;
 u32 seq = ctx->seq;

 event = nfnl_msg_type(NFNL_SUBSYS_NFTABLES, event);
 nlh = nlmsg_put(skb, portid, seq, event, sizeof(struct nfgenmsg),
   flags);
 if (nlh == ((void*)0))
  goto nla_put_failure;

 nfmsg = nlmsg_data(nlh);
 nfmsg->nfgen_family = ctx->family;
 nfmsg->version = NFNETLINK_V0;
 nfmsg->res_id = htons(ctx->net->nft.base_seq & 0xffff);

 if (nla_put_string(skb, NFTA_SET_TABLE, ctx->table->name))
  goto nla_put_failure;
 if (nla_put_string(skb, NFTA_SET_NAME, set->name))
  goto nla_put_failure;
 if (nla_put_be64(skb, NFTA_SET_HANDLE, cpu_to_be64(set->handle),
    NFTA_SET_PAD))
  goto nla_put_failure;
 if (set->flags != 0)
  if (nla_put_be32(skb, NFTA_SET_FLAGS, htonl(set->flags)))
   goto nla_put_failure;

 if (nla_put_be32(skb, NFTA_SET_KEY_TYPE, htonl(set->ktype)))
  goto nla_put_failure;
 if (nla_put_be32(skb, NFTA_SET_KEY_LEN, htonl(set->klen)))
  goto nla_put_failure;
 if (set->flags & NFT_SET_MAP) {
  if (nla_put_be32(skb, NFTA_SET_DATA_TYPE, htonl(set->dtype)))
   goto nla_put_failure;
  if (nla_put_be32(skb, NFTA_SET_DATA_LEN, htonl(set->dlen)))
   goto nla_put_failure;
 }
 if (set->flags & NFT_SET_OBJECT &&
     nla_put_be32(skb, NFTA_SET_OBJ_TYPE, htonl(set->objtype)))
  goto nla_put_failure;

 if (set->timeout &&
     nla_put_be64(skb, NFTA_SET_TIMEOUT,
    nf_jiffies64_to_msecs(set->timeout),
    NFTA_SET_PAD))
  goto nla_put_failure;
 if (set->gc_int &&
     nla_put_be32(skb, NFTA_SET_GC_INTERVAL, htonl(set->gc_int)))
  goto nla_put_failure;

 if (set->policy != NFT_SET_POL_PERFORMANCE) {
  if (nla_put_be32(skb, NFTA_SET_POLICY, htonl(set->policy)))
   goto nla_put_failure;
 }

 if (nla_put(skb, NFTA_SET_USERDATA, set->udlen, set->udata))
  goto nla_put_failure;

 desc = nla_nest_start_noflag(skb, NFTA_SET_DESC);
 if (desc == ((void*)0))
  goto nla_put_failure;
 if (set->size &&
     nla_put_be32(skb, NFTA_SET_DESC_SIZE, htonl(set->size)))
  goto nla_put_failure;
 nla_nest_end(skb, desc);

 nlmsg_end(skb, nlh);
 return 0;

nla_put_failure:
 nlmsg_trim(skb, nlh);
 return -1;
}
