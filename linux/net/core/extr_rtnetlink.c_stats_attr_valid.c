
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IFLA_STATS_FILTER_BIT (int) ;

__attribute__((used)) static bool stats_attr_valid(unsigned int mask, int attrid, int idxattr)
{
 return (mask & IFLA_STATS_FILTER_BIT(attrid)) &&
        (!idxattr || idxattr == attrid);
}
