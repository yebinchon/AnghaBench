
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {int * cb; } ;
typedef int __u32 ;


 int ETH_HLEN ;
 int load_half (struct __sk_buff*,int) ;
 int parse_eth_proto (struct __sk_buff*,int ) ;

int main_prog(struct __sk_buff *skb)
{
 __u32 nhoff = ETH_HLEN;
 __u32 proto = load_half(skb, 12);

 skb->cb[0] = nhoff;
 parse_eth_proto(skb, proto);
 return 0;
}
