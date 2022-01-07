
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_tunnel_key {int * remote_ipv6; } ;
struct __sk_buff {int dummy; } ;
typedef int key ;
typedef int fmt ;


 int BPF_F_TUNINFO_IPV6 ;
 int ERROR (int) ;
 int TC_ACT_OK ;
 int TC_ACT_SHOT ;
 int bpf_htonl (int ) ;
 int bpf_skb_get_tunnel_key (struct __sk_buff*,struct bpf_tunnel_key*,int,int ) ;
 int bpf_trace_printk (char*,int,int ,int ) ;

int _ipip6_get_tunnel(struct __sk_buff *skb)
{
 int ret;
 struct bpf_tunnel_key key;
 char fmt[] = "remote ip6 %x::%x\n";

 ret = bpf_skb_get_tunnel_key(skb, &key, sizeof(key),
         BPF_F_TUNINFO_IPV6);
 if (ret < 0) {
  ERROR(ret);
  return TC_ACT_SHOT;
 }

 bpf_trace_printk(fmt, sizeof(fmt), bpf_htonl(key.remote_ipv6[0]),
    bpf_htonl(key.remote_ipv6[3]));
 return TC_ACT_OK;
}
