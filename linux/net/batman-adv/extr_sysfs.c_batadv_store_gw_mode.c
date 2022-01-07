
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct kobject {int dummy; } ;
struct TYPE_6__ {int mode; } ;
struct batadv_priv {TYPE_3__ gw; TYPE_2__* algo_ops; } ;
struct attribute {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {int is_eligible; int get_best_gw_node; } ;
struct TYPE_5__ {TYPE_1__ gw; } ;



 char* BATADV_GW_MODE_CLIENT_NAME ;
 int BATADV_GW_MODE_OFF ;
 char* BATADV_GW_MODE_OFF_NAME ;

 char* BATADV_GW_MODE_SERVER_NAME ;
 size_t EINVAL ;
 int atomic_read (int *) ;
 int atomic_set (int *,unsigned int) ;
 int batadv_gw_check_client_stop (struct batadv_priv*) ;
 int batadv_gw_reselect (struct batadv_priv*) ;
 int batadv_gw_tvlv_container_update (struct batadv_priv*) ;
 int batadv_info (struct net_device*,char*,char*,...) ;
 struct net_device* batadv_kobj_to_netdev (struct kobject*) ;
 int batadv_netlink_notify_mesh (struct batadv_priv*) ;
 int batadv_sysfs_deprecated (struct attribute*) ;
 struct batadv_priv* netdev_priv (struct net_device*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;

__attribute__((used)) static ssize_t batadv_store_gw_mode(struct kobject *kobj,
        struct attribute *attr, char *buff,
        size_t count)
{
 struct net_device *net_dev = batadv_kobj_to_netdev(kobj);
 struct batadv_priv *bat_priv = netdev_priv(net_dev);
 char *curr_gw_mode_str;
 int gw_mode_tmp = -1;

 batadv_sysfs_deprecated(attr);




 if (!bat_priv->algo_ops->gw.get_best_gw_node ||
     !bat_priv->algo_ops->gw.is_eligible)
  return -EINVAL;

 if (buff[count - 1] == '\n')
  buff[count - 1] = '\0';

 if (strncmp(buff, BATADV_GW_MODE_OFF_NAME,
      strlen(BATADV_GW_MODE_OFF_NAME)) == 0)
  gw_mode_tmp = BATADV_GW_MODE_OFF;

 if (strncmp(buff, BATADV_GW_MODE_CLIENT_NAME,
      strlen(BATADV_GW_MODE_CLIENT_NAME)) == 0)
  gw_mode_tmp = 129;

 if (strncmp(buff, BATADV_GW_MODE_SERVER_NAME,
      strlen(BATADV_GW_MODE_SERVER_NAME)) == 0)
  gw_mode_tmp = 128;

 if (gw_mode_tmp < 0) {
  batadv_info(net_dev,
       "Invalid parameter for 'gw mode' setting received: %s\n",
       buff);
  return -EINVAL;
 }

 if (atomic_read(&bat_priv->gw.mode) == gw_mode_tmp)
  return count;

 switch (atomic_read(&bat_priv->gw.mode)) {
 case 129:
  curr_gw_mode_str = BATADV_GW_MODE_CLIENT_NAME;
  break;
 case 128:
  curr_gw_mode_str = BATADV_GW_MODE_SERVER_NAME;
  break;
 default:
  curr_gw_mode_str = BATADV_GW_MODE_OFF_NAME;
  break;
 }

 batadv_info(net_dev, "Changing gw mode from: %s to: %s\n",
      curr_gw_mode_str, buff);
 batadv_gw_reselect(bat_priv);



 batadv_gw_check_client_stop(bat_priv);
 atomic_set(&bat_priv->gw.mode, (unsigned int)gw_mode_tmp);
 batadv_gw_tvlv_container_update(bat_priv);

 batadv_netlink_notify_mesh(bat_priv);

 return count;
}
