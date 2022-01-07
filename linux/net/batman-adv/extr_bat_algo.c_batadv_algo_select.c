
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_priv {struct batadv_algo_ops* algo_ops; } ;
struct batadv_algo_ops {int dummy; } ;


 int EINVAL ;
 struct batadv_algo_ops* batadv_algo_get (char*) ;

int batadv_algo_select(struct batadv_priv *bat_priv, char *name)
{
 struct batadv_algo_ops *bat_algo_ops;

 bat_algo_ops = batadv_algo_get(name);
 if (!bat_algo_ops)
  return -EINVAL;

 bat_priv->algo_ops = bat_algo_ops;

 return 0;
}
