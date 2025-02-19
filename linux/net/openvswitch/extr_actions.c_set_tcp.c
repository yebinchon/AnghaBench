
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcphdr {scalar_t__ source; scalar_t__ dest; int check; } ;
struct TYPE_2__ {scalar_t__ dst; scalar_t__ src; } ;
struct sw_flow_key {TYPE_1__ tp; } ;
struct sk_buff {int dummy; } ;
struct ovs_key_tcp {int tcp_dst; int tcp_src; } ;
typedef scalar_t__ __be16 ;


 scalar_t__ OVS_MASKED (scalar_t__,int ,int ) ;
 scalar_t__ likely (int) ;
 int set_tp_port (struct sk_buff*,scalar_t__*,scalar_t__,int *) ;
 int skb_clear_hash (struct sk_buff*) ;
 int skb_ensure_writable (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_transport_offset (struct sk_buff*) ;
 struct tcphdr* tcp_hdr (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int set_tcp(struct sk_buff *skb, struct sw_flow_key *flow_key,
     const struct ovs_key_tcp *key,
     const struct ovs_key_tcp *mask)
{
 struct tcphdr *th;
 __be16 src, dst;
 int err;

 err = skb_ensure_writable(skb, skb_transport_offset(skb) +
      sizeof(struct tcphdr));
 if (unlikely(err))
  return err;

 th = tcp_hdr(skb);
 src = OVS_MASKED(th->source, key->tcp_src, mask->tcp_src);
 if (likely(src != th->source)) {
  set_tp_port(skb, &th->source, src, &th->check);
  flow_key->tp.src = src;
 }
 dst = OVS_MASKED(th->dest, key->tcp_dst, mask->tcp_dst);
 if (likely(dst != th->dest)) {
  set_tp_port(skb, &th->dest, dst, &th->check);
  flow_key->tp.dst = dst;
 }
 skb_clear_hash(skb);

 return 0;
}
