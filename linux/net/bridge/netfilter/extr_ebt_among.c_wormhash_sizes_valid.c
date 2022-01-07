
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebt_mac_wormhash {int dummy; } ;
struct ebt_among_info {int dummy; } ;


 int ebt_mac_wormhash_size (struct ebt_mac_wormhash const*) ;

__attribute__((used)) static bool wormhash_sizes_valid(const struct ebt_mac_wormhash *wh, int a, int b)
{
 if (a == 0)
  a = sizeof(struct ebt_among_info);

 return ebt_mac_wormhash_size(wh) + a == b;
}
