
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dentry* debugfs_dir; } ;
struct ieee80211_sub_if_data {char* name; TYPE_1__ vif; } ;
struct dentry {int d_parent; } ;


 int IFNAMSIZ ;
 scalar_t__ IS_ERR_OR_NULL (struct dentry*) ;
 int debugfs_rename (int ,struct dentry*,int ,char*) ;
 int sprintf (char*,char*,char*) ;

void ieee80211_debugfs_rename_netdev(struct ieee80211_sub_if_data *sdata)
{
 struct dentry *dir;
 char buf[10 + IFNAMSIZ];

 dir = sdata->vif.debugfs_dir;

 if (IS_ERR_OR_NULL(dir))
  return;

 sprintf(buf, "netdev:%s", sdata->name);
 debugfs_rename(dir->d_parent, dir, dir->d_parent, buf);
}
