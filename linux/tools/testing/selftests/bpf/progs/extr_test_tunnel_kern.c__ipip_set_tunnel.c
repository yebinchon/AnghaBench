
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {scalar_t__ dest; } ;
struct iphdr {scalar_t__ protocol; int ihl; } ;
struct bpf_tunnel_key {int tunnel_ttl; int remote_ipv4; } ;
struct __sk_buff {scalar_t__ data_end; scalar_t__ data; } ;
typedef int key ;


 int ERROR (int) ;
 scalar_t__ IPPROTO_ICMP ;
 scalar_t__ IPPROTO_TCP ;
 int TC_ACT_OK ;
 int TC_ACT_SHOT ;
 scalar_t__ bpf_htons (int) ;
 int bpf_skb_set_tunnel_key (struct __sk_buff*,struct bpf_tunnel_key*,int,int ) ;

int _ipip_set_tunnel(struct __sk_buff *skb)
{
 struct bpf_tunnel_key key = {};
 void *data = (void *)(long)skb->data;
 struct iphdr *iph = data;
 struct tcphdr *tcp = data + sizeof(*iph);
 void *data_end = (void *)(long)skb->data_end;
 int ret;


 if (data + sizeof(*iph) + sizeof(*tcp) > data_end) {
  ERROR(1);
  return TC_ACT_SHOT;
 }

 key.tunnel_ttl = 64;
 if (iph->protocol == IPPROTO_ICMP) {
  key.remote_ipv4 = 0xac100164;
 } else {
  if (iph->protocol != IPPROTO_TCP || iph->ihl != 5)
   return TC_ACT_SHOT;

  if (tcp->dest == bpf_htons(5200))
   key.remote_ipv4 = 0xac100164;
  else if (tcp->dest == bpf_htons(5201))
   key.remote_ipv4 = 0xac100165;
  else
   return TC_ACT_SHOT;
 }

 ret = bpf_skb_set_tunnel_key(skb, &key, sizeof(key), 0);
 if (ret < 0) {
  ERROR(ret);
  return TC_ACT_SHOT;
 }

 return TC_ACT_OK;
}
