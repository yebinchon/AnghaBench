
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; } ;
struct net {int dummy; } ;
struct batadv_priv {int * debug_dir; } ;
struct TYPE_2__ {int mode; int name; } ;
struct batadv_debuginfo {int fops; TYPE_1__ attr; } ;


 int ENOMEM ;
 int S_IFREG ;
 scalar_t__ batadv_debug_log_setup (struct batadv_priv*) ;
 int batadv_debugfs ;
 struct batadv_debuginfo** batadv_mesh_debuginfos ;
 int batadv_nc_init_debugfs (struct batadv_priv*) ;
 int batadv_socket_setup (struct batadv_priv*) ;
 int * debugfs_create_dir (int ,int ) ;
 int debugfs_create_file (int ,int,int *,struct net_device*,int *) ;
 int debugfs_remove_recursive (int *) ;
 struct net* dev_net (struct net_device*) ;
 struct net init_net ;
 struct batadv_priv* netdev_priv (struct net_device*) ;

int batadv_debugfs_add_meshif(struct net_device *dev)
{
 struct batadv_priv *bat_priv = netdev_priv(dev);
 struct batadv_debuginfo **bat_debug;
 struct net *net = dev_net(dev);

 if (net != &init_net)
  return 0;

 bat_priv->debug_dir = debugfs_create_dir(dev->name, batadv_debugfs);

 batadv_socket_setup(bat_priv);

 if (batadv_debug_log_setup(bat_priv) < 0)
  goto rem_attr;

 for (bat_debug = batadv_mesh_debuginfos; *bat_debug; ++bat_debug)
  debugfs_create_file(((*bat_debug)->attr).name,
        S_IFREG | ((*bat_debug)->attr).mode,
        bat_priv->debug_dir, dev,
        &(*bat_debug)->fops);

 batadv_nc_init_debugfs(bat_priv);

 return 0;
rem_attr:
 debugfs_remove_recursive(bat_priv->debug_dir);
 bat_priv->debug_dir = ((void*)0);
 return -ENOMEM;
}
