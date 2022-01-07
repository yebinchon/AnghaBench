
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evea_priv {int dummy; } ;


 int evea_update_switch_hp (struct evea_priv*) ;
 int evea_update_switch_lin (struct evea_priv*) ;
 int evea_update_switch_lo (struct evea_priv*) ;

__attribute__((used)) static void evea_update_switch_all(struct evea_priv *evea)
{
 evea_update_switch_lin(evea);
 evea_update_switch_lo(evea);
 evea_update_switch_hp(evea);
}
