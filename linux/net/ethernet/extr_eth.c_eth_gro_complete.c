
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ encapsulation; scalar_t__ data; } ;
struct TYPE_2__ {int (* gro_complete ) (struct sk_buff*,int) ;} ;
struct packet_offload {TYPE_1__ callbacks; } ;
struct ethhdr {int h_proto; } ;
typedef int __be16 ;


 int ENOSYS ;
 struct packet_offload* gro_find_complete_by_type (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_set_inner_mac_header (struct sk_buff*,int) ;
 int stub1 (struct sk_buff*,int) ;

int eth_gro_complete(struct sk_buff *skb, int nhoff)
{
 struct ethhdr *eh = (struct ethhdr *)(skb->data + nhoff);
 __be16 type = eh->h_proto;
 struct packet_offload *ptype;
 int err = -ENOSYS;

 if (skb->encapsulation)
  skb_set_inner_mac_header(skb, nhoff);

 rcu_read_lock();
 ptype = gro_find_complete_by_type(type);
 if (ptype != ((void*)0))
  err = ptype->callbacks.gro_complete(skb, nhoff +
          sizeof(struct ethhdr));

 rcu_read_unlock();
 return err;
}
