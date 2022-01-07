
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {int dummy; } ;
typedef int new_port ;
typedef int __u16 ;


 int TCP_CSUM_OFF ;
 int TCP_DPORT_OFF ;
 int bpf_l4_csum_replace (struct __sk_buff*,int ,int ,int ,int) ;
 int bpf_skb_store_bytes (struct __sk_buff*,int ,int *,int,int ) ;
 int htons (int ) ;
 int load_half (struct __sk_buff*,int ) ;

__attribute__((used)) static inline void set_tcp_dest_port(struct __sk_buff *skb, __u16 new_port)
{
 __u16 old_port = htons(load_half(skb, TCP_DPORT_OFF));

 bpf_l4_csum_replace(skb, TCP_CSUM_OFF, old_port, new_port, sizeof(new_port));
 bpf_skb_store_bytes(skb, TCP_DPORT_OFF, &new_port, sizeof(new_port), 0);
}
