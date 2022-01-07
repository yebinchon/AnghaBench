
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {int dummy; } ;
typedef int new_ip ;
typedef int __u32 ;


 int IP_CSUM_OFF ;
 int IP_SRC_OFF ;
 int IS_PSEUDO ;
 int TCP_CSUM_OFF ;
 int _htonl (int ) ;
 int bpf_l3_csum_replace (struct __sk_buff*,int ,int ,int ,int) ;
 int bpf_l4_csum_replace (struct __sk_buff*,int ,int ,int ,int) ;
 int bpf_skb_store_bytes (struct __sk_buff*,int ,int *,int,int ) ;
 int load_word (struct __sk_buff*,int ) ;

__attribute__((used)) static inline void set_tcp_ip_src(struct __sk_buff *skb, __u32 new_ip)
{
 __u32 old_ip = _htonl(load_word(skb, IP_SRC_OFF));

 bpf_l4_csum_replace(skb, TCP_CSUM_OFF, old_ip, new_ip, IS_PSEUDO | sizeof(new_ip));
 bpf_l3_csum_replace(skb, IP_CSUM_OFF, old_ip, new_ip, sizeof(new_ip));
 bpf_skb_store_bytes(skb, IP_SRC_OFF, &new_ip, sizeof(new_ip), 0);
}
