
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {char* name; } ;
struct dentry {int d_parent; } ;
struct batadv_priv {struct dentry* debug_dir; } ;


 int debugfs_rename (int ,struct dentry*,int ,char const*) ;
 struct batadv_priv* netdev_priv (struct net_device*) ;

void batadv_debugfs_rename_meshif(struct net_device *dev)
{
 struct batadv_priv *bat_priv = netdev_priv(dev);
 const char *name = dev->name;
 struct dentry *dir;

 dir = bat_priv->debug_dir;
 if (!dir)
  return;

 debugfs_rename(dir->d_parent, dir, dir->d_parent, name);
}
