
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {int dummy; } ;
struct shrink_control {int dummy; } ;


 int atomic_long_read (int *) ;
 int nfs_access_nr_entries ;
 unsigned long vfs_pressure_ratio (int ) ;

unsigned long
nfs_access_cache_count(struct shrinker *shrink, struct shrink_control *sc)
{
 return vfs_pressure_ratio(atomic_long_read(&nfs_access_nr_entries));
}
