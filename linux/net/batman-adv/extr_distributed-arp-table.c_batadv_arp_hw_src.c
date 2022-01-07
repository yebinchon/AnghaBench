
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct arphdr {int dummy; } ;


 scalar_t__ ETH_HLEN ;

__attribute__((used)) static u8 *batadv_arp_hw_src(struct sk_buff *skb, int hdr_size)
{
 u8 *addr;

 addr = (u8 *)(skb->data + hdr_size);
 addr += ETH_HLEN + sizeof(struct arphdr);

 return addr;
}
