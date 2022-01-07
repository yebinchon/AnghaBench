
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct j1939_priv {TYPE_1__* ents; int lock; } ;
struct j1939_ecu {int dummy; } ;
struct TYPE_2__ {struct j1939_ecu* ecu; } ;


 int lockdep_assert_held (int *) ;

struct j1939_ecu *j1939_ecu_find_by_addr_locked(struct j1939_priv *priv,
      u8 addr)
{
 lockdep_assert_held(&priv->lock);

 return priv->ents[addr].ecu;
}
