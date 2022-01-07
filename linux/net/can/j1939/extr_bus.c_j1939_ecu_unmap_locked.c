
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_priv {struct j1939_addr_ent* ents; int lock; } ;
struct j1939_ecu {size_t addr; scalar_t__ nusers; struct j1939_priv* priv; } ;
struct j1939_addr_ent {int nusers; int * ecu; } ;


 int j1939_address_is_unicast (size_t) ;
 int j1939_ecu_is_mapped_locked (struct j1939_ecu*) ;
 int j1939_ecu_put (struct j1939_ecu*) ;
 int lockdep_assert_held (int *) ;

void j1939_ecu_unmap_locked(struct j1939_ecu *ecu)
{
 struct j1939_priv *priv = ecu->priv;
 struct j1939_addr_ent *ent;

 lockdep_assert_held(&priv->lock);

 if (!j1939_address_is_unicast(ecu->addr))
  return;

 if (!j1939_ecu_is_mapped_locked(ecu))
  return;

 ent = &priv->ents[ecu->addr];
 ent->ecu = ((void*)0);
 ent->nusers -= ecu->nusers;
 j1939_ecu_put(ecu);
}
