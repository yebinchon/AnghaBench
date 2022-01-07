
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int es_stats_shk_cnt; int es_stats_all_cnt; int es_stats_cache_misses; int es_stats_cache_hits; } ;
struct ext4_sb_info {int s_es_shrinker; TYPE_1__ s_es_stats; } ;


 int percpu_counter_destroy (int *) ;
 int unregister_shrinker (int *) ;

void ext4_es_unregister_shrinker(struct ext4_sb_info *sbi)
{
 percpu_counter_destroy(&sbi->s_es_stats.es_stats_cache_hits);
 percpu_counter_destroy(&sbi->s_es_stats.es_stats_cache_misses);
 percpu_counter_destroy(&sbi->s_es_stats.es_stats_all_cnt);
 percpu_counter_destroy(&sbi->s_es_stats.es_stats_shk_cnt);
 unregister_shrinker(&sbi->s_es_shrinker);
}
