
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long node_id; } ;
typedef TYPE_1__ pg_data_t ;


 unsigned long EVICTION_MASK ;
 unsigned long MEM_CGROUP_ID_SHIFT ;
 unsigned long NODES_SHIFT ;
 unsigned long bucket_order ;
 void* xa_mk_value (unsigned long) ;

__attribute__((used)) static void *pack_shadow(int memcgid, pg_data_t *pgdat, unsigned long eviction,
    bool workingset)
{
 eviction >>= bucket_order;
 eviction &= EVICTION_MASK;
 eviction = (eviction << MEM_CGROUP_ID_SHIFT) | memcgid;
 eviction = (eviction << NODES_SHIFT) | pgdat->node_id;
 eviction = (eviction << 1) | workingset;

 return xa_mk_value(eviction);
}
