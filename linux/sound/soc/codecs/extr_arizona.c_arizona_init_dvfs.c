
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona_priv {int dvfs_lock; } ;


 int mutex_init (int *) ;

void arizona_init_dvfs(struct arizona_priv *priv)
{
 mutex_init(&priv->dvfs_lock);
}
