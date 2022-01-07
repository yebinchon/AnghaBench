
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * hash; } ;
struct batadv_priv {TYPE_1__ dat; } ;


 int __batadv_dat_purge (struct batadv_priv*,int *) ;
 int batadv_hash_destroy (int *) ;

__attribute__((used)) static void batadv_dat_hash_free(struct batadv_priv *bat_priv)
{
 if (!bat_priv->dat.hash)
  return;

 __batadv_dat_purge(bat_priv, ((void*)0));

 batadv_hash_destroy(bat_priv->dat.hash);

 bat_priv->dat.hash = ((void*)0);
}
