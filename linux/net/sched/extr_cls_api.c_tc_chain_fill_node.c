
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct tcmsg {int tcm_block_index; int tcm_ifindex; int tcm_parent; scalar_t__ tcm_handle; scalar_t__ tcm__pad2; scalar_t__ tcm__pad1; int tcm_family; } ;
struct tcf_proto_ops {scalar_t__ (* tmplt_dump ) (struct sk_buff*,struct net*,void*) ;int kind; } ;
struct tcf_block {int index; TYPE_2__* q; } ;
struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_len; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int handle; } ;
struct TYPE_3__ {int ifindex; } ;


 int AF_UNSPEC ;
 int EMSGSIZE ;
 int TCA_CHAIN ;
 int TCA_KIND ;
 int TCM_IFINDEX_MAGIC_BLOCK ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 struct tcmsg* nlmsg_data (struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 TYPE_1__* qdisc_dev (TYPE_2__*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 scalar_t__ stub1 (struct sk_buff*,struct net*,void*) ;

__attribute__((used)) static int tc_chain_fill_node(const struct tcf_proto_ops *tmplt_ops,
         void *tmplt_priv, u32 chain_index,
         struct net *net, struct sk_buff *skb,
         struct tcf_block *block,
         u32 portid, u32 seq, u16 flags, int event)
{
 unsigned char *b = skb_tail_pointer(skb);
 const struct tcf_proto_ops *ops;
 struct nlmsghdr *nlh;
 struct tcmsg *tcm;
 void *priv;

 ops = tmplt_ops;
 priv = tmplt_priv;

 nlh = nlmsg_put(skb, portid, seq, event, sizeof(*tcm), flags);
 if (!nlh)
  goto out_nlmsg_trim;
 tcm = nlmsg_data(nlh);
 tcm->tcm_family = AF_UNSPEC;
 tcm->tcm__pad1 = 0;
 tcm->tcm__pad2 = 0;
 tcm->tcm_handle = 0;
 if (block->q) {
  tcm->tcm_ifindex = qdisc_dev(block->q)->ifindex;
  tcm->tcm_parent = block->q->handle;
 } else {
  tcm->tcm_ifindex = TCM_IFINDEX_MAGIC_BLOCK;
  tcm->tcm_block_index = block->index;
 }

 if (nla_put_u32(skb, TCA_CHAIN, chain_index))
  goto nla_put_failure;

 if (ops) {
  if (nla_put_string(skb, TCA_KIND, ops->kind))
   goto nla_put_failure;
  if (ops->tmplt_dump(skb, net, priv) < 0)
   goto nla_put_failure;
 }

 nlh->nlmsg_len = skb_tail_pointer(skb) - b;
 return skb->len;

out_nlmsg_trim:
nla_put_failure:
 nlmsg_trim(skb, b);
 return -EMSGSIZE;
}
