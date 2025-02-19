
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int d_parent; } ;
struct batadv_hard_iface {struct dentry* debug_dir; TYPE_1__* net_dev; } ;
struct TYPE_2__ {char* name; } ;


 int debugfs_rename (int ,struct dentry*,int ,char const*) ;

void batadv_debugfs_rename_hardif(struct batadv_hard_iface *hard_iface)
{
 const char *name = hard_iface->net_dev->name;
 struct dentry *dir;

 dir = hard_iface->debug_dir;
 if (!dir)
  return;

 debugfs_rename(dir->d_parent, dir, dir->d_parent, name);
}
