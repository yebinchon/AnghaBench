
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_priv {int dummy; } ;


 int batadv_v_ogm_init (struct batadv_priv*) ;

int batadv_v_mesh_init(struct batadv_priv *bat_priv)
{
 int ret = 0;

 ret = batadv_v_ogm_init(bat_priv);
 if (ret < 0)
  return ret;

 return 0;
}
