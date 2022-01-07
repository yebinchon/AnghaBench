
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_flow_keys {int n_proto; } ;
struct __sk_buff {struct bpf_flow_keys* flow_keys; } ;


 int parse_eth_proto (struct __sk_buff*,int ) ;

int _dissect(struct __sk_buff *skb)
{
 struct bpf_flow_keys *keys = skb->flow_keys;

 return parse_eth_proto(skb, keys->n_proto);
}
