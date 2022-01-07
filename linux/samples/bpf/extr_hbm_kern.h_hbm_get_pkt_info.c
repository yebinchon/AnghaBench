
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6hdr {int nexthdr; int* flow_lbl; } ;
struct iphdr {int version; int protocol; int tos; } ;
struct hbm_pkt_info {int is_ip; int is_tcp; int ecn; scalar_t__ rtt; scalar_t__ cwnd; } ;
struct __sk_buff {int dummy; } ;


 int INET_ECN_MASK ;
 int bpf_skb_load_bytes (struct __sk_buff*,int ,struct iphdr*,int) ;
 int get_tcp_info (struct __sk_buff*,struct hbm_pkt_info*) ;

__attribute__((used)) static void hbm_get_pkt_info(struct __sk_buff *skb,
        struct hbm_pkt_info *pkti)
{
 struct iphdr iph;
 struct ipv6hdr *ip6h;

 pkti->cwnd = 0;
 pkti->rtt = 0;
 bpf_skb_load_bytes(skb, 0, &iph, 12);
 if (iph.version == 6) {
  ip6h = (struct ipv6hdr *)&iph;
  pkti->is_ip = 1;
  pkti->is_tcp = (ip6h->nexthdr == 6);
  pkti->ecn = (ip6h->flow_lbl[0] >> 4) & INET_ECN_MASK;
 } else if (iph.version == 4) {
  pkti->is_ip = 1;
  pkti->is_tcp = (iph.protocol == 6);
  pkti->ecn = iph.tos & INET_ECN_MASK;
 } else {
  pkti->is_ip = 0;
  pkti->is_tcp = 0;
  pkti->ecn = 0;
 }
 if (pkti->is_tcp)
  get_tcp_info(skb, pkti);
}
