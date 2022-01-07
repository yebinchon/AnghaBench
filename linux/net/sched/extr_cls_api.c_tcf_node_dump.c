
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tcf_walker {int dummy; } ;
struct tcf_proto {int dummy; } ;
struct tcf_dump_args {TYPE_2__* cb; int parent; int q; int block; TYPE_3__* skb; } ;
struct net {int dummy; } ;
struct TYPE_8__ {int portid; } ;
struct TYPE_7__ {int sk; } ;
struct TYPE_6__ {TYPE_1__* nlh; int skb; } ;
struct TYPE_5__ {int nlmsg_seq; } ;


 TYPE_4__ NETLINK_CB (int ) ;
 int NLM_F_MULTI ;
 int RTM_NEWTFILTER ;
 struct net* sock_net (int ) ;
 int tcf_fill_node (struct net*,TYPE_3__*,struct tcf_proto*,int ,int ,int ,void*,int ,int ,int ,int ,int) ;

__attribute__((used)) static int tcf_node_dump(struct tcf_proto *tp, void *n, struct tcf_walker *arg)
{
 struct tcf_dump_args *a = (void *)arg;
 struct net *net = sock_net(a->skb->sk);

 return tcf_fill_node(net, a->skb, tp, a->block, a->q, a->parent,
        n, NETLINK_CB(a->cb->skb).portid,
        a->cb->nlh->nlmsg_seq, NLM_F_MULTI,
        RTM_NEWTFILTER, 1);
}
