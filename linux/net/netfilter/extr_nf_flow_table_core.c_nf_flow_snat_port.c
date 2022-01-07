
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct flow_ports {void* dest; void* source; } ;
struct flow_offload {TYPE_2__* tuplehash; } ;
typedef enum flow_offload_tuple_dir { ____Placeholder_flow_offload_tuple_dir } flow_offload_tuple_dir ;
typedef void* __be16 ;
struct TYPE_3__ {void* src_port; void* dst_port; } ;
struct TYPE_4__ {TYPE_1__ tuple; } ;




 int nf_flow_nat_port (struct sk_buff*,unsigned int,int ,void*,void*) ;
 int pskb_may_pull (struct sk_buff*,unsigned int) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 scalar_t__ skb_try_make_writable (struct sk_buff*,unsigned int) ;

int nf_flow_snat_port(const struct flow_offload *flow,
        struct sk_buff *skb, unsigned int thoff,
        u8 protocol, enum flow_offload_tuple_dir dir)
{
 struct flow_ports *hdr;
 __be16 port, new_port;

 if (!pskb_may_pull(skb, thoff + sizeof(*hdr)) ||
     skb_try_make_writable(skb, thoff + sizeof(*hdr)))
  return -1;

 hdr = (void *)(skb_network_header(skb) + thoff);

 switch (dir) {
 case 129:
  port = hdr->source;
  new_port = flow->tuplehash[128].tuple.dst_port;
  hdr->source = new_port;
  break;
 case 128:
  port = hdr->dest;
  new_port = flow->tuplehash[129].tuple.src_port;
  hdr->dest = new_port;
  break;
 default:
  return -1;
 }

 return nf_flow_nat_port(skb, thoff, protocol, port, new_port);
}
