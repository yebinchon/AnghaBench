
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct batadv_priv {TYPE_1__* algo_ops; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 struct batadv_priv* batadv_kobj_to_batpriv (struct kobject*) ;
 int batadv_sysfs_deprecated (struct attribute*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t batadv_show_bat_algo(struct kobject *kobj,
        struct attribute *attr, char *buff)
{
 struct batadv_priv *bat_priv = batadv_kobj_to_batpriv(kobj);

 batadv_sysfs_deprecated(attr);
 return sprintf(buff, "%s\n", bat_priv->algo_ops->name);
}
