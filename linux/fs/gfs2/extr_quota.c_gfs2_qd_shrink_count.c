
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {int dummy; } ;
struct shrink_control {int dummy; } ;


 int gfs2_qd_lru ;
 int list_lru_shrink_count (int *,struct shrink_control*) ;
 unsigned long vfs_pressure_ratio (int ) ;

__attribute__((used)) static unsigned long gfs2_qd_shrink_count(struct shrinker *shrink,
       struct shrink_control *sc)
{
 return vfs_pressure_ratio(list_lru_shrink_count(&gfs2_qd_lru, sc));
}
