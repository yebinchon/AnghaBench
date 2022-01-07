
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t u32 ;
struct net {int dummy; } ;


 int SEL_NETIF_HASH_SIZE ;

__attribute__((used)) static inline u32 sel_netif_hashfn(const struct net *ns, int ifindex)
{
 return (((uintptr_t)ns + ifindex) & (SEL_NETIF_HASH_SIZE - 1));
}
