
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_tunnel_key {int tunnel_label; int * remote_ipv6; int tunnel_id; } ;
struct __sk_buff {int dummy; } ;
typedef int key ;
typedef int fmt ;


 int BPF_F_TUNINFO_IPV6 ;
 int ERROR (int) ;
 int TC_ACT_OK ;
 int TC_ACT_SHOT ;
 int bpf_skb_get_tunnel_key (struct __sk_buff*,struct bpf_tunnel_key*,int,int ) ;
 int bpf_trace_printk (char*,int,int ,int ,int ) ;

int _ip6vxlan_get_tunnel(struct __sk_buff *skb)
{
 char fmt[] = "key %d remote ip6 ::%x label %x\n";
 struct bpf_tunnel_key key;
 int ret;

 ret = bpf_skb_get_tunnel_key(skb, &key, sizeof(key),
         BPF_F_TUNINFO_IPV6);
 if (ret < 0) {
  ERROR(ret);
  return TC_ACT_SHOT;
 }

 bpf_trace_printk(fmt, sizeof(fmt),
    key.tunnel_id, key.remote_ipv6[3], key.tunnel_label);

 return TC_ACT_OK;
}
