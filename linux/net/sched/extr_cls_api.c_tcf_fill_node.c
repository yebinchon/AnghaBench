
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct tcmsg {scalar_t__ tcm_handle; int tcm_info; int tcm_block_index; int tcm_ifindex; int tcm_parent; scalar_t__ tcm__pad2; scalar_t__ tcm__pad1; int tcm_family; } ;
struct tcf_proto {TYPE_2__* ops; TYPE_1__* chain; int protocol; int prio; } ;
struct tcf_block {int index; } ;
struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_len; } ;
struct net {int dummy; } ;
struct Qdisc {int dummy; } ;
struct TYPE_6__ {int ifindex; } ;
struct TYPE_5__ {scalar_t__ (* dump ) (struct net*,struct tcf_proto*,void*,struct sk_buff*,struct tcmsg*,int) ;int kind; } ;
struct TYPE_4__ {int index; } ;


 int AF_UNSPEC ;
 int TCA_CHAIN ;
 int TCA_KIND ;
 int TCM_IFINDEX_MAGIC_BLOCK ;
 int TC_H_MAKE (int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 struct tcmsg* nlmsg_data (struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 TYPE_3__* qdisc_dev (struct Qdisc*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 scalar_t__ stub1 (struct net*,struct tcf_proto*,void*,struct sk_buff*,struct tcmsg*,int) ;

__attribute__((used)) static int tcf_fill_node(struct net *net, struct sk_buff *skb,
    struct tcf_proto *tp, struct tcf_block *block,
    struct Qdisc *q, u32 parent, void *fh,
    u32 portid, u32 seq, u16 flags, int event,
    bool rtnl_held)
{
 struct tcmsg *tcm;
 struct nlmsghdr *nlh;
 unsigned char *b = skb_tail_pointer(skb);

 nlh = nlmsg_put(skb, portid, seq, event, sizeof(*tcm), flags);
 if (!nlh)
  goto out_nlmsg_trim;
 tcm = nlmsg_data(nlh);
 tcm->tcm_family = AF_UNSPEC;
 tcm->tcm__pad1 = 0;
 tcm->tcm__pad2 = 0;
 if (q) {
  tcm->tcm_ifindex = qdisc_dev(q)->ifindex;
  tcm->tcm_parent = parent;
 } else {
  tcm->tcm_ifindex = TCM_IFINDEX_MAGIC_BLOCK;
  tcm->tcm_block_index = block->index;
 }
 tcm->tcm_info = TC_H_MAKE(tp->prio, tp->protocol);
 if (nla_put_string(skb, TCA_KIND, tp->ops->kind))
  goto nla_put_failure;
 if (nla_put_u32(skb, TCA_CHAIN, tp->chain->index))
  goto nla_put_failure;
 if (!fh) {
  tcm->tcm_handle = 0;
 } else {
  if (tp->ops->dump &&
      tp->ops->dump(net, tp, fh, skb, tcm, rtnl_held) < 0)
   goto nla_put_failure;
 }
 nlh->nlmsg_len = skb_tail_pointer(skb) - b;
 return skb->len;

out_nlmsg_trim:
nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}
