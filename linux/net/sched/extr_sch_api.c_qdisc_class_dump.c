
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qdisc_walker {int dummy; } ;
struct qdisc_dump_args {TYPE_2__* cb; int skb; } ;
struct Qdisc {int dummy; } ;
struct TYPE_6__ {int portid; } ;
struct TYPE_5__ {TYPE_1__* nlh; int skb; } ;
struct TYPE_4__ {int nlmsg_seq; } ;


 TYPE_3__ NETLINK_CB (int ) ;
 int NLM_F_MULTI ;
 int RTM_NEWTCLASS ;
 int tc_fill_tclass (int ,struct Qdisc*,unsigned long,int ,int ,int ,int ) ;

__attribute__((used)) static int qdisc_class_dump(struct Qdisc *q, unsigned long cl,
       struct qdisc_walker *arg)
{
 struct qdisc_dump_args *a = (struct qdisc_dump_args *)arg;

 return tc_fill_tclass(a->skb, q, cl, NETLINK_CB(a->cb->skb).portid,
         a->cb->nlh->nlmsg_seq, NLM_F_MULTI,
         RTM_NEWTCLASS);
}
