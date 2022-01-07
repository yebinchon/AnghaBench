
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct tcmsg {scalar_t__ tcm_info; int tcm_handle; int tcm_parent; int tcm_ifindex; scalar_t__ tcm__pad2; scalar_t__ tcm__pad1; int tcm_family; } ;
struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_len; } ;
struct gnet_dump {int dummy; } ;
struct Qdisc_class_ops {scalar_t__ (* dump ) (struct Qdisc*,unsigned long,struct sk_buff*,struct tcmsg*) ;scalar_t__ (* dump_stats ) (struct Qdisc*,unsigned long,struct gnet_dump*) ;} ;
struct Qdisc {TYPE_1__* ops; int handle; } ;
struct TYPE_4__ {int ifindex; } ;
struct TYPE_3__ {int id; struct Qdisc_class_ops* cl_ops; } ;


 int AF_UNSPEC ;
 int TCA_KIND ;
 int TCA_PAD ;
 int TCA_STATS ;
 int TCA_STATS2 ;
 int TCA_XSTATS ;
 int cond_resched () ;
 scalar_t__ gnet_stats_finish_copy (struct gnet_dump*) ;
 scalar_t__ gnet_stats_start_copy_compat (struct sk_buff*,int ,int ,int ,int *,struct gnet_dump*,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 struct tcmsg* nlmsg_data (struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 TYPE_2__* qdisc_dev (struct Qdisc*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 scalar_t__ stub1 (struct Qdisc*,unsigned long,struct sk_buff*,struct tcmsg*) ;
 scalar_t__ stub2 (struct Qdisc*,unsigned long,struct gnet_dump*) ;

__attribute__((used)) static int tc_fill_tclass(struct sk_buff *skb, struct Qdisc *q,
     unsigned long cl,
     u32 portid, u32 seq, u16 flags, int event)
{
 struct tcmsg *tcm;
 struct nlmsghdr *nlh;
 unsigned char *b = skb_tail_pointer(skb);
 struct gnet_dump d;
 const struct Qdisc_class_ops *cl_ops = q->ops->cl_ops;

 cond_resched();
 nlh = nlmsg_put(skb, portid, seq, event, sizeof(*tcm), flags);
 if (!nlh)
  goto out_nlmsg_trim;
 tcm = nlmsg_data(nlh);
 tcm->tcm_family = AF_UNSPEC;
 tcm->tcm__pad1 = 0;
 tcm->tcm__pad2 = 0;
 tcm->tcm_ifindex = qdisc_dev(q)->ifindex;
 tcm->tcm_parent = q->handle;
 tcm->tcm_handle = q->handle;
 tcm->tcm_info = 0;
 if (nla_put_string(skb, TCA_KIND, q->ops->id))
  goto nla_put_failure;
 if (cl_ops->dump && cl_ops->dump(q, cl, skb, tcm) < 0)
  goto nla_put_failure;

 if (gnet_stats_start_copy_compat(skb, TCA_STATS2, TCA_STATS, TCA_XSTATS,
      ((void*)0), &d, TCA_PAD) < 0)
  goto nla_put_failure;

 if (cl_ops->dump_stats && cl_ops->dump_stats(q, cl, &d) < 0)
  goto nla_put_failure;

 if (gnet_stats_finish_copy(&d) < 0)
  goto nla_put_failure;

 nlh->nlmsg_len = skb_tail_pointer(skb) - b;
 return skb->len;

out_nlmsg_trim:
nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}
