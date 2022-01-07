
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_6__ {int mode; } ;
struct batadv_priv {TYPE_3__ gw; TYPE_2__* algo_ops; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int is_eligible; int get_best_gw_node; } ;
struct TYPE_5__ {TYPE_1__ gw; } ;



 char* BATADV_GW_MODE_CLIENT_NAME ;
 char* BATADV_GW_MODE_OFF_NAME ;

 char* BATADV_GW_MODE_SERVER_NAME ;
 int ENOENT ;
 int atomic_read (int *) ;
 struct batadv_priv* batadv_kobj_to_batpriv (struct kobject*) ;
 int batadv_sysfs_deprecated (struct attribute*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t batadv_show_gw_mode(struct kobject *kobj, struct attribute *attr,
       char *buff)
{
 struct batadv_priv *bat_priv = batadv_kobj_to_batpriv(kobj);
 int bytes_written;

 batadv_sysfs_deprecated(attr);




 if (!bat_priv->algo_ops->gw.get_best_gw_node ||
     !bat_priv->algo_ops->gw.is_eligible)
  return -ENOENT;

 switch (atomic_read(&bat_priv->gw.mode)) {
 case 129:
  bytes_written = sprintf(buff, "%s\n",
     BATADV_GW_MODE_CLIENT_NAME);
  break;
 case 128:
  bytes_written = sprintf(buff, "%s\n",
     BATADV_GW_MODE_SERVER_NAME);
  break;
 default:
  bytes_written = sprintf(buff, "%s\n",
     BATADV_GW_MODE_OFF_NAME);
  break;
 }

 return bytes_written;
}
