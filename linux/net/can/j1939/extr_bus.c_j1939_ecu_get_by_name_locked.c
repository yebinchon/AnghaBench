
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_priv {int lock; } ;
struct j1939_ecu {int dummy; } ;
typedef int name_t ;


 struct j1939_ecu* j1939_ecu_find_by_name_locked (struct j1939_priv*,int ) ;
 int j1939_ecu_get (struct j1939_ecu*) ;
 int lockdep_assert_held (int *) ;

struct j1939_ecu *j1939_ecu_get_by_name_locked(struct j1939_priv *priv,
            name_t name)
{
 struct j1939_ecu *ecu;

 lockdep_assert_held(&priv->lock);

 if (!name)
  return ((void*)0);

 ecu = j1939_ecu_find_by_name_locked(priv, name);
 if (ecu)
  j1939_ecu_get(ecu);

 return ecu;
}
