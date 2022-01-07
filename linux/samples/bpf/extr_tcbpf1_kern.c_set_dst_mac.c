
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {int dummy; } ;


 int ETH_ALEN ;
 int bpf_skb_store_bytes (struct __sk_buff*,int ,char*,int ,int) ;

__attribute__((used)) static inline void set_dst_mac(struct __sk_buff *skb, char *mac)
{
 bpf_skb_store_bytes(skb, 0, mac, ETH_ALEN, 1);
}
