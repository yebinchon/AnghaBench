
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct j1939_priv {int lock; TYPE_1__* ents; } ;
struct j1939_ecu {size_t addr; int nusers; } ;
typedef int name_t ;
struct TYPE_2__ {int nusers; } ;


 int PTR_ERR_OR_ZERO (struct j1939_ecu*) ;
 scalar_t__ j1939_address_is_unicast (size_t) ;
 struct j1939_ecu* j1939_ecu_create_locked (struct j1939_priv*,int ) ;
 struct j1939_ecu* j1939_ecu_get_by_name_locked (struct j1939_priv*,int ) ;
 scalar_t__ j1939_ecu_is_mapped_locked (struct j1939_ecu*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int j1939_local_ecu_get(struct j1939_priv *priv, name_t name, u8 sa)
{
 struct j1939_ecu *ecu;
 int err = 0;

 write_lock_bh(&priv->lock);

 if (j1939_address_is_unicast(sa))
  priv->ents[sa].nusers++;

 if (!name)
  goto done;

 ecu = j1939_ecu_get_by_name_locked(priv, name);
 if (!ecu)
  ecu = j1939_ecu_create_locked(priv, name);
 err = PTR_ERR_OR_ZERO(ecu);
 if (err)
  goto done;

 ecu->nusers++;

 if (j1939_ecu_is_mapped_locked(ecu))

  priv->ents[ecu->addr].nusers++;

 done:
 write_unlock_bh(&priv->lock);

 return err;
}
