
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct j1939_priv {int lock; TYPE_1__* ents; } ;
struct TYPE_2__ {scalar_t__ ecu; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int j1939_ecu_unmap_locked (scalar_t__) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void j1939_ecu_unmap_all(struct j1939_priv *priv)
{
 int i;

 write_lock_bh(&priv->lock);
 for (i = 0; i < ARRAY_SIZE(priv->ents); i++)
  if (priv->ents[i].ecu)
   j1939_ecu_unmap_locked(priv->ents[i].ecu);
 write_unlock_bh(&priv->lock);
}
