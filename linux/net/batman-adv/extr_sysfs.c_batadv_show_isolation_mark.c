
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct batadv_priv {int isolation_mark; int isolation_mark_mask; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 struct batadv_priv* batadv_kobj_to_batpriv (struct kobject*) ;
 int batadv_sysfs_deprecated (struct attribute*) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t batadv_show_isolation_mark(struct kobject *kobj,
       struct attribute *attr, char *buff)
{
 struct batadv_priv *bat_priv = batadv_kobj_to_batpriv(kobj);

 batadv_sysfs_deprecated(attr);
 return sprintf(buff, "%#.8x/%#.8x\n", bat_priv->isolation_mark,
         bat_priv->isolation_mark_mask);
}
