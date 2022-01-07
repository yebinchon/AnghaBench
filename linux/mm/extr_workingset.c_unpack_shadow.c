
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_data_t ;


 unsigned long MEM_CGROUP_ID_SHIFT ;
 unsigned long NODES_SHIFT ;
 int * NODE_DATA (int) ;
 unsigned long bucket_order ;
 unsigned long xa_to_value (void*) ;

__attribute__((used)) static void unpack_shadow(void *shadow, int *memcgidp, pg_data_t **pgdat,
     unsigned long *evictionp, bool *workingsetp)
{
 unsigned long entry = xa_to_value(shadow);
 int memcgid, nid;
 bool workingset;

 workingset = entry & 1;
 entry >>= 1;
 nid = entry & ((1UL << NODES_SHIFT) - 1);
 entry >>= NODES_SHIFT;
 memcgid = entry & ((1UL << MEM_CGROUP_ID_SHIFT) - 1);
 entry >>= MEM_CGROUP_ID_SHIFT;

 *memcgidp = memcgid;
 *pgdat = NODE_DATA(nid);
 *evictionp = entry << bucket_order;
 *workingsetp = workingset;
}
