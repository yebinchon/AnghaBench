
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int TIPC_ZONE_CLUSTER_MASK ;

__attribute__((used)) static inline u32 tipc_cluster_mask(u32 addr)
{
 return addr & TIPC_ZONE_CLUSTER_MASK;
}
