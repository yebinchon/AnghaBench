
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int es_stats_cache_hits; int es_stats_cache_misses; int es_stats_all_cnt; int es_stats_shk_cnt; scalar_t__ es_stats_max_scan_time; scalar_t__ es_stats_scan_time; scalar_t__ es_stats_shrunk; } ;
struct TYPE_4__ {int seeks; int count_objects; int scan_objects; } ;
struct ext4_sb_info {TYPE_1__ s_es_stats; TYPE_2__ s_es_shrinker; int s_es_lock; scalar_t__ s_es_nr_inode; int s_es_list; } ;


 int BUILD_BUG_ON (int) ;
 int DEFAULT_SEEKS ;
 int ES_SHIFT ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ext4_es_count ;
 int ext4_es_scan ;
 int percpu_counter_destroy (int *) ;
 int percpu_counter_init (int *,int ,int ) ;
 int register_shrinker (TYPE_2__*) ;
 int spin_lock_init (int *) ;

int ext4_es_register_shrinker(struct ext4_sb_info *sbi)
{
 int err;


 BUILD_BUG_ON(ES_SHIFT < 48);
 INIT_LIST_HEAD(&sbi->s_es_list);
 sbi->s_es_nr_inode = 0;
 spin_lock_init(&sbi->s_es_lock);
 sbi->s_es_stats.es_stats_shrunk = 0;
 err = percpu_counter_init(&sbi->s_es_stats.es_stats_cache_hits, 0,
      GFP_KERNEL);
 if (err)
  return err;
 err = percpu_counter_init(&sbi->s_es_stats.es_stats_cache_misses, 0,
      GFP_KERNEL);
 if (err)
  goto err1;
 sbi->s_es_stats.es_stats_scan_time = 0;
 sbi->s_es_stats.es_stats_max_scan_time = 0;
 err = percpu_counter_init(&sbi->s_es_stats.es_stats_all_cnt, 0, GFP_KERNEL);
 if (err)
  goto err2;
 err = percpu_counter_init(&sbi->s_es_stats.es_stats_shk_cnt, 0, GFP_KERNEL);
 if (err)
  goto err3;

 sbi->s_es_shrinker.scan_objects = ext4_es_scan;
 sbi->s_es_shrinker.count_objects = ext4_es_count;
 sbi->s_es_shrinker.seeks = DEFAULT_SEEKS;
 err = register_shrinker(&sbi->s_es_shrinker);
 if (err)
  goto err4;

 return 0;
err4:
 percpu_counter_destroy(&sbi->s_es_stats.es_stats_shk_cnt);
err3:
 percpu_counter_destroy(&sbi->s_es_stats.es_stats_all_cnt);
err2:
 percpu_counter_destroy(&sbi->s_es_stats.es_stats_cache_misses);
err1:
 percpu_counter_destroy(&sbi->s_es_stats.es_stats_cache_hits);
 return err;
}
