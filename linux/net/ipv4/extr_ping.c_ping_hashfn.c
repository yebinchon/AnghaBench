
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net {int dummy; } ;


 int net_hash_mix (struct net const*) ;
 int pr_debug (char*,int,int) ;

__attribute__((used)) static inline u32 ping_hashfn(const struct net *net, u32 num, u32 mask)
{
 u32 res = (num + net_hash_mix(net)) & mask;

 pr_debug("hash(%u) = %u\n", num, res);
 return res;
}
