
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct geneve_opt {int opt_class; } ;
struct bpf_tunnel_key {int remote_ipv4; int tunnel_id; } ;
struct __sk_buff {int dummy; } ;
typedef int key ;
typedef int gopt ;
typedef int fmt ;


 int ERROR (int) ;
 int TC_ACT_OK ;
 int TC_ACT_SHOT ;
 int bpf_skb_get_tunnel_key (struct __sk_buff*,struct bpf_tunnel_key*,int,int ) ;
 int bpf_skb_get_tunnel_opt (struct __sk_buff*,struct geneve_opt*,int) ;
 int bpf_trace_printk (char*,int,int ,int ,int ) ;

int _geneve_get_tunnel(struct __sk_buff *skb)
{
 int ret;
 struct bpf_tunnel_key key;
 struct geneve_opt gopt;
 char fmt[] = "key %d remote ip 0x%x geneve class 0x%x\n";

 ret = bpf_skb_get_tunnel_key(skb, &key, sizeof(key), 0);
 if (ret < 0) {
  ERROR(ret);
  return TC_ACT_SHOT;
 }

 ret = bpf_skb_get_tunnel_opt(skb, &gopt, sizeof(gopt));
 if (ret < 0) {
  ERROR(ret);
  return TC_ACT_SHOT;
 }

 bpf_trace_printk(fmt, sizeof(fmt),
   key.tunnel_id, key.remote_ipv4, gopt.opt_class);
 return TC_ACT_OK;
}
