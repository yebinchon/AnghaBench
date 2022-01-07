
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mem_cgroup {int dummy; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ pg_data_t ;


 int PGDAT_CONGESTED ;
 scalar_t__ memcg_congested (TYPE_1__*,struct mem_cgroup*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool pgdat_memcg_congested(pg_data_t *pgdat, struct mem_cgroup *memcg)
{
 return test_bit(PGDAT_CONGESTED, &pgdat->flags) ||
  (memcg && memcg_congested(pgdat, memcg));
}
