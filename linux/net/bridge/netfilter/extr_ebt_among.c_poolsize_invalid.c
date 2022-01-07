
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebt_mac_wormhash_tuple {int dummy; } ;
struct ebt_mac_wormhash {int poolsize; } ;


 int INT_MAX ;

__attribute__((used)) static bool poolsize_invalid(const struct ebt_mac_wormhash *w)
{
 return w && w->poolsize >= (INT_MAX / sizeof(struct ebt_mac_wormhash_tuple));
}
