
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_priv {int kref; } ;


 int __j1939_priv_release ;
 int kref_put (int *,int ) ;

void j1939_priv_put(struct j1939_priv *priv)
{
 kref_put(&priv->kref, __j1939_priv_release);
}
