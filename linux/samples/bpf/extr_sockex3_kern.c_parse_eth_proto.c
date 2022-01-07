
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct __sk_buff {int dummy; } ;
 int PARSE_IP ;
 int PARSE_IPV6 ;
 int PARSE_MPLS ;
 int PARSE_VLAN ;
 int bpf_tail_call (struct __sk_buff*,int *,int ) ;
 int jmp_table ;

__attribute__((used)) static inline void parse_eth_proto(struct __sk_buff *skb, u32 proto)
{
 switch (proto) {
 case 132:
 case 133:
  bpf_tail_call(skb, &jmp_table, PARSE_VLAN);
  break;
 case 128:
 case 129:
  bpf_tail_call(skb, &jmp_table, PARSE_MPLS);
  break;
 case 131:
  bpf_tail_call(skb, &jmp_table, PARSE_IP);
  break;
 case 130:
  bpf_tail_call(skb, &jmp_table, PARSE_IPV6);
  break;
 }
}
