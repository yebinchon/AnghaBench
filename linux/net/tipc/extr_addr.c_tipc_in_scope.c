
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int TIPC_ZONE_CLUSTER_MASK ;
 int TIPC_ZONE_MASK ;
 int tipc_cluster_mask (int) ;

bool tipc_in_scope(bool legacy_format, u32 domain, u32 addr)
{
 if (!domain || (domain == addr))
  return 1;
 if (!legacy_format)
  return 0;
 if (domain == tipc_cluster_mask(addr))
  return 1;
 if (domain == (addr & TIPC_ZONE_CLUSTER_MASK))
  return 1;
 if (domain == (addr & TIPC_ZONE_MASK))
  return 1;
 return 0;
}
