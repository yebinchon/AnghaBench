
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sel_class; } ;
struct batadv_priv {TYPE_1__ gw; } ;


 int atomic_set (int *,int) ;

__attribute__((used)) static void batadv_iv_init_sel_class(struct batadv_priv *bat_priv)
{

 atomic_set(&bat_priv->gw.sel_class, 20);
}
