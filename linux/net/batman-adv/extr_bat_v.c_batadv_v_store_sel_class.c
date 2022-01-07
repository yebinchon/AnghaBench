
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int sel_class; } ;
struct batadv_priv {TYPE_1__ gw; int soft_iface; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,scalar_t__) ;
 int batadv_gw_reselect (struct batadv_priv*) ;
 int batadv_parse_throughput (int ,char*,char*,scalar_t__*) ;

__attribute__((used)) static ssize_t batadv_v_store_sel_class(struct batadv_priv *bat_priv,
     char *buff, size_t count)
{
 u32 old_class, class;

 if (!batadv_parse_throughput(bat_priv->soft_iface, buff,
         "B.A.T.M.A.N. V GW selection class",
         &class))
  return -EINVAL;

 old_class = atomic_read(&bat_priv->gw.sel_class);
 atomic_set(&bat_priv->gw.sel_class, class);

 if (old_class != class)
  batadv_gw_reselect(bat_priv);

 return count;
}
