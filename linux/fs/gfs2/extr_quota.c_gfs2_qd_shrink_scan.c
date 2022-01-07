
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {int dummy; } ;
struct shrink_control {int gfp_mask; } ;


 int LIST_HEAD (int ) ;
 unsigned long SHRINK_STOP ;
 int __GFP_FS ;
 int dispose ;
 int gfs2_qd_dispose (int *) ;
 int gfs2_qd_isolate ;
 int gfs2_qd_lru ;
 unsigned long list_lru_shrink_walk (int *,struct shrink_control*,int ,int *) ;

__attribute__((used)) static unsigned long gfs2_qd_shrink_scan(struct shrinker *shrink,
      struct shrink_control *sc)
{
 LIST_HEAD(dispose);
 unsigned long freed;

 if (!(sc->gfp_mask & __GFP_FS))
  return SHRINK_STOP;

 freed = list_lru_shrink_walk(&gfs2_qd_lru, sc,
         gfs2_qd_isolate, &dispose);

 gfs2_qd_dispose(&dispose);

 return freed;
}
