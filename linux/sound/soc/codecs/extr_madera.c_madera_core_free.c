
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera_priv {int rate_lock; } ;


 int mutex_destroy (int *) ;

int madera_core_free(struct madera_priv *priv)
{
 mutex_destroy(&priv->rate_lock);

 return 0;
}
