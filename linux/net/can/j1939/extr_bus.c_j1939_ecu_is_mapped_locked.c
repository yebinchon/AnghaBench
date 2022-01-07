
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_priv {int lock; } ;
struct j1939_ecu {int addr; struct j1939_priv* priv; } ;


 struct j1939_ecu* j1939_ecu_find_by_addr_locked (struct j1939_priv*,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static bool j1939_ecu_is_mapped_locked(struct j1939_ecu *ecu)
{
 struct j1939_priv *priv = ecu->priv;

 lockdep_assert_held(&priv->lock);

 return j1939_ecu_find_by_addr_locked(priv, ecu->addr) == ecu;
}
