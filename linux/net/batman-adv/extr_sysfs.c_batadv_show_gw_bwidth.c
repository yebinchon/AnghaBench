
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct kobject {int dummy; } ;
struct TYPE_2__ {int bandwidth_up; int bandwidth_down; } ;
struct batadv_priv {TYPE_1__ gw; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int atomic_read (int *) ;
 struct batadv_priv* batadv_kobj_to_batpriv (struct kobject*) ;
 int batadv_sysfs_deprecated (struct attribute*) ;
 int sprintf (char*,char*,int,int,int,int) ;

__attribute__((used)) static ssize_t batadv_show_gw_bwidth(struct kobject *kobj,
         struct attribute *attr, char *buff)
{
 struct batadv_priv *bat_priv = batadv_kobj_to_batpriv(kobj);
 u32 down, up;

 batadv_sysfs_deprecated(attr);

 down = atomic_read(&bat_priv->gw.bandwidth_down);
 up = atomic_read(&bat_priv->gw.bandwidth_up);

 return sprintf(buff, "%u.%u/%u.%u MBit\n", down / 10,
         down % 10, up / 10, up % 10);
}
