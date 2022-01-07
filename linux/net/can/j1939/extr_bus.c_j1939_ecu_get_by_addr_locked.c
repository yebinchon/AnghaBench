
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct j1939_priv {int lock; } ;
struct j1939_ecu {int dummy; } ;


 int j1939_address_is_unicast (int ) ;
 struct j1939_ecu* j1939_ecu_find_by_addr_locked (struct j1939_priv*,int ) ;
 int j1939_ecu_get (struct j1939_ecu*) ;
 int lockdep_assert_held (int *) ;

struct j1939_ecu *j1939_ecu_get_by_addr_locked(struct j1939_priv *priv, u8 addr)
{
 struct j1939_ecu *ecu;

 lockdep_assert_held(&priv->lock);

 if (!j1939_address_is_unicast(addr))
  return ((void*)0);

 ecu = j1939_ecu_find_by_addr_locked(priv, addr);
 if (ecu)
  j1939_ecu_get(ecu);

 return ecu;
}
