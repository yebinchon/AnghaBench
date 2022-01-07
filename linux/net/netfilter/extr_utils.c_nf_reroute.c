
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int pf; } ;
struct nf_queue_entry {TYPE_1__ state; } ;
struct nf_ipv6_ops {int (* reroute ) (struct sk_buff*,struct nf_queue_entry*) ;} ;




 int nf_ip_reroute (struct sk_buff*,struct nf_queue_entry*) ;
 int nf_ipv6_ops ;
 struct nf_ipv6_ops* rcu_dereference (int ) ;
 int stub1 (struct sk_buff*,struct nf_queue_entry*) ;

int nf_reroute(struct sk_buff *skb, struct nf_queue_entry *entry)
{
 const struct nf_ipv6_ops *v6ops;
 int ret = 0;

 switch (entry->state.pf) {
 case 129:
  ret = nf_ip_reroute(skb, entry);
  break;
 case 128:
  v6ops = rcu_dereference(nf_ipv6_ops);
  if (v6ops)
   ret = v6ops->reroute(skb, entry);
  break;
 }
 return ret;
}
