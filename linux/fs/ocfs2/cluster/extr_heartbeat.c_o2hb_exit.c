
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove_recursive (int ) ;
 int kfree (int ) ;
 int o2hb_db_failedregions ;
 int o2hb_db_livenodes ;
 int o2hb_db_liveregions ;
 int o2hb_db_quorumregions ;
 int o2hb_debug_dir ;

void o2hb_exit(void)
{
 debugfs_remove_recursive(o2hb_debug_dir);
 kfree(o2hb_db_livenodes);
 kfree(o2hb_db_liveregions);
 kfree(o2hb_db_quorumregions);
 kfree(o2hb_db_failedregions);
}
