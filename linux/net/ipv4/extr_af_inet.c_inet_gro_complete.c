
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ encapsulation; scalar_t__ data; scalar_t__ len; } ;
struct TYPE_2__ {int gro_complete; } ;
struct net_offload {TYPE_1__ callbacks; } ;
struct iphdr {int protocol; int tot_len; int check; } ;
typedef int __be16 ;


 int ENOSYS ;
 int ETH_P_IP ;
 int INDIRECT_CALL_2 (int ,int ,int ,struct sk_buff*,int) ;
 scalar_t__ WARN_ON (int) ;
 int cpu_to_be16 (int ) ;
 int csum_replace2 (int *,int ,int ) ;
 int htons (scalar_t__) ;
 int * inet_offloads ;
 struct net_offload* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_set_inner_network_header (struct sk_buff*,int) ;
 int skb_set_inner_protocol (struct sk_buff*,int ) ;
 int tcp4_gro_complete ;
 int udp4_gro_complete ;

int inet_gro_complete(struct sk_buff *skb, int nhoff)
{
 __be16 newlen = htons(skb->len - nhoff);
 struct iphdr *iph = (struct iphdr *)(skb->data + nhoff);
 const struct net_offload *ops;
 int proto = iph->protocol;
 int err = -ENOSYS;

 if (skb->encapsulation) {
  skb_set_inner_protocol(skb, cpu_to_be16(ETH_P_IP));
  skb_set_inner_network_header(skb, nhoff);
 }

 csum_replace2(&iph->check, iph->tot_len, newlen);
 iph->tot_len = newlen;

 rcu_read_lock();
 ops = rcu_dereference(inet_offloads[proto]);
 if (WARN_ON(!ops || !ops->callbacks.gro_complete))
  goto out_unlock;





 err = INDIRECT_CALL_2(ops->callbacks.gro_complete,
         tcp4_gro_complete, udp4_gro_complete,
         skb, nhoff + sizeof(*iph));

out_unlock:
 rcu_read_unlock();

 return err;
}
