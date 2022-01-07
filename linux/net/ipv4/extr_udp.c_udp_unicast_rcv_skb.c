
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {scalar_t__ check; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int IPPROTO_UDP ;
 int IS_UDPLITE (struct sock*) ;
 int inet_compute_pseudo ;
 scalar_t__ inet_get_convert_csum (struct sock*) ;
 int skb_checksum_try_convert (struct sk_buff*,int ,int ) ;
 int udp_queue_rcv_skb (struct sock*,struct sk_buff*) ;

__attribute__((used)) static int udp_unicast_rcv_skb(struct sock *sk, struct sk_buff *skb,
          struct udphdr *uh)
{
 int ret;

 if (inet_get_convert_csum(sk) && uh->check && !IS_UDPLITE(sk))
  skb_checksum_try_convert(skb, IPPROTO_UDP, inet_compute_pseudo);

 ret = udp_queue_rcv_skb(sk, skb);




 if (ret > 0)
  return -ret;
 return 0;
}
