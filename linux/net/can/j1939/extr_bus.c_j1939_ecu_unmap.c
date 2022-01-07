
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct j1939_ecu {TYPE_1__* priv; } ;
struct TYPE_2__ {int lock; } ;


 int j1939_ecu_unmap_locked (struct j1939_ecu*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void j1939_ecu_unmap(struct j1939_ecu *ecu)
{
 write_lock_bh(&ecu->priv->lock);
 j1939_ecu_unmap_locked(ecu);
 write_unlock_bh(&ecu->priv->lock);
}
