
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_tunnel_key {int remote_ipv4; int tunnel_id; } ;
struct __sk_buff {int dummy; } ;
typedef int key ;
typedef int fmt ;


 int ERROR (int) ;
 int TC_ACT_OK ;
 int TC_ACT_SHOT ;
 int bpf_skb_get_tunnel_key (struct __sk_buff*,struct bpf_tunnel_key*,int,int ) ;
 int bpf_trace_printk (char*,int,int ,int ) ;

int _gre_get_tunnel(struct __sk_buff *skb)
{
 int ret;
 struct bpf_tunnel_key key;
 char fmt[] = "key %d remote ip 0x%x\n";

 ret = bpf_skb_get_tunnel_key(skb, &key, sizeof(key), 0);
 if (ret < 0) {
  ERROR(ret);
  return TC_ACT_SHOT;
 }

 bpf_trace_printk(fmt, sizeof(fmt), key.tunnel_id, key.remote_ipv4);
 return TC_ACT_OK;
}
