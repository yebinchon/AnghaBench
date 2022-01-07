
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int debugfs_dir; } ;
struct TYPE_6__ {int default_mgmt_key; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; TYPE_3__ debugfs; int default_mgmt_key; int local; } ;
struct TYPE_5__ {int cnt; } ;
struct ieee80211_key {TYPE_2__ debugfs; } ;


 int debugfs_create_symlink (char*,int ,char*) ;
 int ieee80211_debugfs_key_remove_mgmt_default (struct ieee80211_sub_if_data*) ;
 struct ieee80211_key* key_mtx_dereference (int ,int ) ;
 int sprintf (char*,char*,int) ;

void ieee80211_debugfs_key_add_mgmt_default(struct ieee80211_sub_if_data *sdata)
{
 char buf[50];
 struct ieee80211_key *key;

 if (!sdata->vif.debugfs_dir)
  return;

 key = key_mtx_dereference(sdata->local,
      sdata->default_mgmt_key);
 if (key) {
  sprintf(buf, "../keys/%d", key->debugfs.cnt);
  sdata->debugfs.default_mgmt_key =
   debugfs_create_symlink("default_mgmt_key",
            sdata->vif.debugfs_dir, buf);
 } else
  ieee80211_debugfs_key_remove_mgmt_default(sdata);
}
