
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shrinker {int dummy; } ;
struct shrink_control {int dummy; } ;
struct TYPE_2__ {int * counter; } ;


 size_t DQST_FREE_DQUOTS ;
 TYPE_1__ dqstats ;
 int percpu_counter_read_positive (int *) ;
 unsigned long vfs_pressure_ratio (int ) ;

__attribute__((used)) static unsigned long
dqcache_shrink_count(struct shrinker *shrink, struct shrink_control *sc)
{
 return vfs_pressure_ratio(
 percpu_counter_read_positive(&dqstats.counter[DQST_FREE_DQUOTS]));
}
