
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {scalar_t__ dest; } ;
struct iphdr {scalar_t__ protocol; int ihl; } ;
struct eth_hdr {scalar_t__ h_proto; } ;
struct __sk_buff {scalar_t__ data_end; scalar_t__ data; } ;


 int DEFAULT_PKTGEN_UDP_PORT ;
 int ETH_P_IP ;
 scalar_t__ IPPROTO_UDP ;
 int TC_ACT_SHOT ;
 scalar_t__ htons (int ) ;
 scalar_t__ ip_is_fragment (struct iphdr*) ;

int handle_ingress(struct __sk_buff *skb)
{
 void *data = (void *)(long)skb->data;
 struct eth_hdr *eth = data;
 struct iphdr *iph = data + sizeof(*eth);
 struct udphdr *udp = data + sizeof(*eth) + sizeof(*iph);
 void *data_end = (void *)(long)skb->data_end;


 if (data + sizeof(*eth) + sizeof(*iph) + sizeof(*udp) > data_end)
  return 0;

 if (eth->h_proto != htons(ETH_P_IP))
  return 0;
 if (iph->protocol != IPPROTO_UDP || iph->ihl != 5)
  return 0;
 if (ip_is_fragment(iph))
  return 0;
 if (udp->dest == htons(DEFAULT_PKTGEN_UDP_PORT))
  return TC_ACT_SHOT;
 return 0;
}
