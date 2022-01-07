
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_priv {int lock; } ;
struct j1939_ecu {int dummy; } ;
typedef int name_t ;


 struct j1939_ecu* j1939_ecu_get_by_name_locked (struct j1939_priv*,int ) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

struct j1939_ecu *j1939_ecu_get_by_name(struct j1939_priv *priv, name_t name)
{
 struct j1939_ecu *ecu;

 read_lock_bh(&priv->lock);
 ecu = j1939_ecu_get_by_name_locked(priv, name);
 read_unlock_bh(&priv->lock);

 return ecu;
}
