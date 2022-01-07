
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_4__ {int sel_class; } ;
struct batadv_priv {TYPE_1__ gw; TYPE_3__* algo_ops; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_5__ {int (* show_sel_class ) (struct batadv_priv*,char*) ;int is_eligible; int get_best_gw_node; } ;
struct TYPE_6__ {TYPE_2__ gw; } ;


 int ENOENT ;
 int atomic_read (int *) ;
 struct batadv_priv* batadv_kobj_to_batpriv (struct kobject*) ;
 int batadv_sysfs_deprecated (struct attribute*) ;
 int sprintf (char*,char*,int) ;
 int stub1 (struct batadv_priv*,char*) ;

__attribute__((used)) static ssize_t batadv_show_gw_sel_class(struct kobject *kobj,
     struct attribute *attr, char *buff)
{
 struct batadv_priv *bat_priv = batadv_kobj_to_batpriv(kobj);

 batadv_sysfs_deprecated(attr);




 if (!bat_priv->algo_ops->gw.get_best_gw_node ||
     !bat_priv->algo_ops->gw.is_eligible)
  return -ENOENT;

 if (bat_priv->algo_ops->gw.show_sel_class)
  return bat_priv->algo_ops->gw.show_sel_class(bat_priv, buff);

 return sprintf(buff, "%i\n", atomic_read(&bat_priv->gw.sel_class));
}
