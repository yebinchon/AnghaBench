
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {int dummy; } ;
typedef int new_tos ;
typedef int __u8 ;


 int IP_CSUM_OFF ;
 int TOS_OFF ;
 int bpf_l3_csum_replace (struct __sk_buff*,int ,int ,int ,int) ;
 int bpf_skb_store_bytes (struct __sk_buff*,int ,int *,int,int ) ;
 int htons (int ) ;
 int load_byte (struct __sk_buff*,int ) ;

__attribute__((used)) static inline void set_ip_tos(struct __sk_buff *skb, __u8 new_tos)
{
 __u8 old_tos = load_byte(skb, TOS_OFF);

 bpf_l3_csum_replace(skb, IP_CSUM_OFF, htons(old_tos), htons(new_tos), 2);
 bpf_skb_store_bytes(skb, TOS_OFF, &new_tos, sizeof(new_tos), 0);
}
