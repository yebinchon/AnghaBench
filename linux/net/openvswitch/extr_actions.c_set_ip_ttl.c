
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct iphdr {int ttl; int check; } ;


 int OVS_MASKED (int,int,int) ;
 int csum_replace2 (int *,int ,int ) ;
 int htons (int) ;

__attribute__((used)) static void set_ip_ttl(struct sk_buff *skb, struct iphdr *nh, u8 new_ttl,
         u8 mask)
{
 new_ttl = OVS_MASKED(nh->ttl, new_ttl, mask);

 csum_replace2(&nh->check, htons(nh->ttl << 8), htons(new_ttl << 8));
 nh->ttl = new_ttl;
}
