
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct iphdr {int check; void* daddr; void* saddr; } ;
struct flow_offload {TYPE_3__* tuplehash; } ;
typedef enum flow_offload_tuple_dir { ____Placeholder_flow_offload_tuple_dir } flow_offload_tuple_dir ;
typedef void* __be32 ;
struct TYPE_8__ {void* s_addr; } ;
struct TYPE_5__ {void* s_addr; } ;
struct TYPE_6__ {TYPE_1__ src_v4; TYPE_4__ dst_v4; } ;
struct TYPE_7__ {TYPE_2__ tuple; } ;




 int csum_replace4 (int *,void*,void*) ;
 int nf_flow_nat_ip_l4proto (struct sk_buff*,struct iphdr*,unsigned int,void*,void*) ;

__attribute__((used)) static int nf_flow_snat_ip(const struct flow_offload *flow, struct sk_buff *skb,
      struct iphdr *iph, unsigned int thoff,
      enum flow_offload_tuple_dir dir)
{
 __be32 addr, new_addr;

 switch (dir) {
 case 129:
  addr = iph->saddr;
  new_addr = flow->tuplehash[128].tuple.dst_v4.s_addr;
  iph->saddr = new_addr;
  break;
 case 128:
  addr = iph->daddr;
  new_addr = flow->tuplehash[129].tuple.src_v4.s_addr;
  iph->daddr = new_addr;
  break;
 default:
  return -1;
 }
 csum_replace4(&iph->check, addr, new_addr);

 return nf_flow_nat_ip_l4proto(skb, iph, thoff, addr, new_addr);
}
