
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_6__ {int sel_class; } ;
struct batadv_priv {int soft_iface; TYPE_3__ gw; TYPE_2__* algo_ops; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int (* store_sel_class ) (struct batadv_priv*,char*,size_t) ;int is_eligible; int get_best_gw_node; } ;
struct TYPE_5__ {TYPE_1__ gw; } ;


 int BATADV_TQ_MAX_VALUE ;
 int EINVAL ;
 int __batadv_store_uint_attr (char*,size_t,int,int ,int ,struct attribute*,int *,int ,int *) ;
 struct batadv_priv* batadv_kobj_to_batpriv (struct kobject*) ;
 int batadv_netlink_notify_mesh (struct batadv_priv*) ;
 int batadv_post_gw_reselect ;
 int batadv_sysfs_deprecated (struct attribute*) ;
 int stub1 (struct batadv_priv*,char*,size_t) ;

__attribute__((used)) static ssize_t batadv_store_gw_sel_class(struct kobject *kobj,
      struct attribute *attr, char *buff,
      size_t count)
{
 struct batadv_priv *bat_priv = batadv_kobj_to_batpriv(kobj);
 ssize_t length;

 batadv_sysfs_deprecated(attr);




 if (!bat_priv->algo_ops->gw.get_best_gw_node ||
     !bat_priv->algo_ops->gw.is_eligible)
  return -EINVAL;

 if (buff[count - 1] == '\n')
  buff[count - 1] = '\0';

 if (bat_priv->algo_ops->gw.store_sel_class)
  return bat_priv->algo_ops->gw.store_sel_class(bat_priv, buff,
             count);

 length = __batadv_store_uint_attr(buff, count, 1, BATADV_TQ_MAX_VALUE,
       batadv_post_gw_reselect, attr,
       &bat_priv->gw.sel_class,
       bat_priv->soft_iface, ((void*)0));

 batadv_netlink_notify_mesh(bat_priv);

 return length;
}
