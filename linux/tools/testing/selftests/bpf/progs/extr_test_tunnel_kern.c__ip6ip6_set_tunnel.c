
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int dest; } ;
struct ipv6hdr {int nexthdr; } ;
struct bpf_tunnel_key {int tunnel_ttl; void** remote_ipv6; } ;
struct __sk_buff {scalar_t__ data_end; scalar_t__ data; } ;
typedef int key ;


 int BPF_F_TUNINFO_IPV6 ;
 int ERROR (int) ;
 int TC_ACT_OK ;
 int TC_ACT_SHOT ;
 void* bpf_htonl (int) ;
 int bpf_htons (int) ;
 int bpf_skb_set_tunnel_key (struct __sk_buff*,struct bpf_tunnel_key*,int,int ) ;

int _ip6ip6_set_tunnel(struct __sk_buff *skb)
{
 struct bpf_tunnel_key key = {};
 void *data = (void *)(long)skb->data;
 struct ipv6hdr *iph = data;
 struct tcphdr *tcp = data + sizeof(*iph);
 void *data_end = (void *)(long)skb->data_end;
 int ret;


 if (data + sizeof(*iph) + sizeof(*tcp) > data_end) {
  ERROR(1);
  return TC_ACT_SHOT;
 }

 key.remote_ipv6[0] = bpf_htonl(0x2401db00);
 key.tunnel_ttl = 64;

 if (iph->nexthdr == 58 ) {
  key.remote_ipv6[3] = bpf_htonl(1);
 } else {
  if (iph->nexthdr != 6 ) {
   ERROR(iph->nexthdr);
   return TC_ACT_SHOT;
  }

  if (tcp->dest == bpf_htons(5200)) {
   key.remote_ipv6[3] = bpf_htonl(1);
  } else if (tcp->dest == bpf_htons(5201)) {
   key.remote_ipv6[3] = bpf_htonl(2);
  } else {
   ERROR(tcp->dest);
   return TC_ACT_SHOT;
  }
 }

 ret = bpf_skb_set_tunnel_key(skb, &key, sizeof(key),
         BPF_F_TUNINFO_IPV6);
 if (ret < 0) {
  ERROR(ret);
  return TC_ACT_SHOT;
 }

 return TC_ACT_OK;
}
