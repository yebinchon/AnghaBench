
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int len; int sk; } ;
struct netlink_callback {int* args; TYPE_2__* nlh; int skb; } ;
struct TYPE_4__ {int stat; } ;
struct net {TYPE_1__ ct; } ;
struct ip_conntrack_stat {int dummy; } ;
struct TYPE_6__ {int portid; } ;
struct TYPE_5__ {int nlmsg_seq; } ;


 TYPE_3__ NETLINK_CB (int ) ;
 int cpu_possible (int) ;
 scalar_t__ ctnetlink_exp_stat_fill_info (struct sk_buff*,int ,int ,int,struct ip_conntrack_stat const*) ;
 int nr_cpu_ids ;
 struct ip_conntrack_stat* per_cpu_ptr (int ,int) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int
ctnetlink_exp_stat_cpu_dump(struct sk_buff *skb, struct netlink_callback *cb)
{
 int cpu;
 struct net *net = sock_net(skb->sk);

 if (cb->args[0] == nr_cpu_ids)
  return 0;

 for (cpu = cb->args[0]; cpu < nr_cpu_ids; cpu++) {
  const struct ip_conntrack_stat *st;

  if (!cpu_possible(cpu))
   continue;

  st = per_cpu_ptr(net->ct.stat, cpu);
  if (ctnetlink_exp_stat_fill_info(skb, NETLINK_CB(cb->skb).portid,
       cb->nlh->nlmsg_seq,
       cpu, st) < 0)
   break;
 }
 cb->args[0] = cpu;

 return skb->len;
}
