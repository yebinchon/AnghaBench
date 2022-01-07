
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct iphdr {int check; } ;
typedef int __be32 ;


 int csum_replace4 (int *,int ,int ) ;
 int skb_clear_hash (struct sk_buff*) ;
 int update_ip_l4_checksum (struct sk_buff*,struct iphdr*,int ,int ) ;

__attribute__((used)) static void set_ip_addr(struct sk_buff *skb, struct iphdr *nh,
   __be32 *addr, __be32 new_addr)
{
 update_ip_l4_checksum(skb, nh, *addr, new_addr);
 csum_replace4(&nh->check, *addr, new_addr);
 skb_clear_hash(skb);
 *addr = new_addr;
}
