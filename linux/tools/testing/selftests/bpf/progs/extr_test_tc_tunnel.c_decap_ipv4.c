
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iphdr {int ihl; int protocol; } ;
struct __sk_buff {int dummy; } ;
typedef int iph_outer ;


 int ETH_HLEN ;
 int TC_ACT_OK ;
 scalar_t__ bpf_skb_load_bytes (struct __sk_buff*,int ,struct iphdr*,int) ;
 int decap_internal (struct __sk_buff*,int ,int,int ) ;

__attribute__((used)) static int decap_ipv4(struct __sk_buff *skb)
{
 struct iphdr iph_outer;

 if (bpf_skb_load_bytes(skb, ETH_HLEN, &iph_outer,
          sizeof(iph_outer)) < 0)
  return TC_ACT_OK;

 if (iph_outer.ihl != 5)
  return TC_ACT_OK;

 return decap_internal(skb, ETH_HLEN, sizeof(iph_outer),
         iph_outer.protocol);
}
