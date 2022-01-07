
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minstrel_ht_sta_priv {int dummy; } ;
struct dentry {int dummy; } ;


 int debugfs_create_file (char*,int,struct dentry*,struct minstrel_ht_sta_priv*,int *) ;
 int minstrel_ht_stat_csv_fops ;
 int minstrel_ht_stat_fops ;

void
minstrel_ht_add_sta_debugfs(void *priv, void *priv_sta, struct dentry *dir)
{
 struct minstrel_ht_sta_priv *msp = priv_sta;

 debugfs_create_file("rc_stats", 0444, dir, msp,
       &minstrel_ht_stat_fops);
 debugfs_create_file("rc_stats_csv", 0444, dir, msp,
       &minstrel_ht_stat_csv_fops);
}
