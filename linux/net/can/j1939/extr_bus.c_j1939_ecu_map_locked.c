
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_priv {int ndev; struct j1939_addr_ent* ents; int lock; } ;
struct j1939_ecu {size_t addr; scalar_t__ nusers; int name; struct j1939_priv* priv; } ;
struct j1939_addr_ent {int nusers; struct j1939_ecu* ecu; } ;


 int j1939_address_is_unicast (size_t) ;
 int j1939_ecu_get (struct j1939_ecu*) ;
 int lockdep_assert_held (int *) ;
 int netdev_warn (int ,char*,size_t,int ) ;

__attribute__((used)) static void j1939_ecu_map_locked(struct j1939_ecu *ecu)
{
 struct j1939_priv *priv = ecu->priv;
 struct j1939_addr_ent *ent;

 lockdep_assert_held(&priv->lock);

 if (!j1939_address_is_unicast(ecu->addr))
  return;

 ent = &priv->ents[ecu->addr];

 if (ent->ecu) {
  netdev_warn(priv->ndev, "Trying to map already mapped ECU, addr: 0x%02x, name: 0x%016llx. Skip it.\n",
       ecu->addr, ecu->name);
  return;
 }

 j1939_ecu_get(ecu);
 ent->ecu = ecu;
 ent->nusers += ecu->nusers;
}
