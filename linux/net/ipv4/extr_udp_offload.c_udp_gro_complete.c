
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int udp_lookup_t ;
struct udphdr {scalar_t__ check; int dest; int source; int len; } ;
struct sock {int dummy; } ;
struct sk_buff {int encapsulation; scalar_t__ remcsum_offload; scalar_t__ data; scalar_t__ len; } ;
typedef int __be16 ;
struct TYPE_4__ {int gso_type; } ;
struct TYPE_3__ {int (* gro_complete ) (struct sock*,struct sk_buff*,int) ;scalar_t__ gro_enabled; } ;


 int ENOSYS ;
 struct sock* INDIRECT_CALL_INET (int ,int ,int ,struct sk_buff*,int ,int ) ;
 int SKB_GSO_TUNNEL_REMCSUM ;
 int SKB_GSO_UDP_TUNNEL ;
 int SKB_GSO_UDP_TUNNEL_CSUM ;
 int htons (scalar_t__) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int stub1 (struct sock*,struct sk_buff*,int) ;
 int udp4_lib_lookup_skb ;
 int udp6_lib_lookup_skb ;
 int udp_gro_complete_segment (struct sk_buff*) ;
 TYPE_1__* udp_sk (struct sock*) ;

int udp_gro_complete(struct sk_buff *skb, int nhoff,
       udp_lookup_t lookup)
{
 __be16 newlen = htons(skb->len - nhoff);
 struct udphdr *uh = (struct udphdr *)(skb->data + nhoff);
 int err = -ENOSYS;
 struct sock *sk;

 uh->len = newlen;

 rcu_read_lock();
 sk = INDIRECT_CALL_INET(lookup, udp6_lib_lookup_skb,
    udp4_lib_lookup_skb, skb, uh->source, uh->dest);
 if (sk && udp_sk(sk)->gro_enabled) {
  err = udp_gro_complete_segment(skb);
 } else if (sk && udp_sk(sk)->gro_complete) {
  skb_shinfo(skb)->gso_type = uh->check ? SKB_GSO_UDP_TUNNEL_CSUM
     : SKB_GSO_UDP_TUNNEL;




  skb->encapsulation = 1;
  err = udp_sk(sk)->gro_complete(sk, skb,
    nhoff + sizeof(struct udphdr));
 }
 rcu_read_unlock();

 if (skb->remcsum_offload)
  skb_shinfo(skb)->gso_type |= SKB_GSO_TUNNEL_REMCSUM;

 return err;
}
