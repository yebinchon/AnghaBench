
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_priv {int dummy; } ;


 int batadv_v_ogm_free (struct batadv_priv*) ;

void batadv_v_mesh_free(struct batadv_priv *bat_priv)
{
 batadv_v_ogm_free(bat_priv);
}
