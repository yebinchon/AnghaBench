
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neighbour {int dummy; } ;


 int neigh_key_eq32 (struct neighbour const*,void const*) ;

__attribute__((used)) static bool arp_key_eq(const struct neighbour *neigh, const void *pkey)
{
 return neigh_key_eq32(neigh, pkey);
}
