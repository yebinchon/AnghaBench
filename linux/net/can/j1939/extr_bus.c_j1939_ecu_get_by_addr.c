
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct j1939_priv {int lock; } ;
struct j1939_ecu {int dummy; } ;


 struct j1939_ecu* j1939_ecu_get_by_addr_locked (struct j1939_priv*,int ) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

struct j1939_ecu *j1939_ecu_get_by_addr(struct j1939_priv *priv, u8 addr)
{
 struct j1939_ecu *ecu;

 read_lock_bh(&priv->lock);
 ecu = j1939_ecu_get_by_addr_locked(priv, addr);
 read_unlock_bh(&priv->lock);

 return ecu;
}
