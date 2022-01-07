
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int sel_class; } ;
struct batadv_priv {TYPE_1__ gw; } ;
typedef int ssize_t ;


 int atomic_read (int *) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t batadv_v_show_sel_class(struct batadv_priv *bat_priv, char *buff)
{
 u32 class = atomic_read(&bat_priv->gw.sel_class);

 return sprintf(buff, "%u.%u MBit\n", class / 10, class % 10);
}
