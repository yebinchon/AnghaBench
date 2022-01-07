
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_priv {int kref; } ;


 int kref_get (int *) ;

void j1939_priv_get(struct j1939_priv *priv)
{
 kref_get(&priv->kref);
}
