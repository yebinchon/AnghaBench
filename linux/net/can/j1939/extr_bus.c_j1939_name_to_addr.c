
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct j1939_priv {int lock; } ;
struct j1939_ecu {int addr; } ;
typedef int name_t ;


 int J1939_IDLE_ADDR ;
 int J1939_NO_ADDR ;
 struct j1939_ecu* j1939_ecu_find_by_name_locked (struct j1939_priv*,int ) ;
 scalar_t__ j1939_ecu_is_mapped_locked (struct j1939_ecu*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

u8 j1939_name_to_addr(struct j1939_priv *priv, name_t name)
{
 struct j1939_ecu *ecu;
 int addr = J1939_IDLE_ADDR;

 if (!name)
  return J1939_NO_ADDR;

 read_lock_bh(&priv->lock);
 ecu = j1939_ecu_find_by_name_locked(priv, name);
 if (ecu && j1939_ecu_is_mapped_locked(ecu))

  addr = ecu->addr;

 read_unlock_bh(&priv->lock);

 return addr;
}
