
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pglist_data {int dummy; } ;
struct mem_cgroup {int dummy; } ;



__attribute__((used)) static inline void set_memcg_congestion(struct pglist_data *pgdat,
    struct mem_cgroup *memcg, bool congested)
{
}
