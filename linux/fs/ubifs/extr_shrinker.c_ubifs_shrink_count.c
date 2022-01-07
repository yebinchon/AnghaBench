
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {int dummy; } ;
struct shrink_control {int dummy; } ;


 long atomic_long_read (int *) ;
 int ubifs_clean_zn_cnt ;

unsigned long ubifs_shrink_count(struct shrinker *shrink,
     struct shrink_control *sc)
{
 long clean_zn_cnt = atomic_long_read(&ubifs_clean_zn_cnt);





 return clean_zn_cnt >= 0 ? clean_zn_cnt : 1;
}
