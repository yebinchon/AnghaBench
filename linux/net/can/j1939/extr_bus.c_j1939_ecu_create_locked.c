
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct j1939_priv {int ecus; int lock; } ;
struct TYPE_2__ {int function; } ;
struct j1939_ecu {int list; struct j1939_priv* priv; TYPE_1__ ac_timer; int name; int addr; int kref; } ;
typedef int name_t ;


 int CLOCK_MONOTONIC ;
 int ENOMEM ;
 struct j1939_ecu* ERR_PTR (int ) ;
 int HRTIMER_MODE_REL_SOFT ;
 int INIT_LIST_HEAD (int *) ;
 int J1939_IDLE_ADDR ;
 int gfp_any () ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 int j1939_ecu_timer_handler ;
 int j1939_priv_get (struct j1939_priv*) ;
 int kref_init (int *) ;
 struct j1939_ecu* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int lockdep_assert_held (int *) ;

struct j1939_ecu *j1939_ecu_create_locked(struct j1939_priv *priv, name_t name)
{
 struct j1939_ecu *ecu;

 lockdep_assert_held(&priv->lock);

 ecu = kzalloc(sizeof(*ecu), gfp_any());
 if (!ecu)
  return ERR_PTR(-ENOMEM);
 kref_init(&ecu->kref);
 ecu->addr = J1939_IDLE_ADDR;
 ecu->name = name;

 hrtimer_init(&ecu->ac_timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL_SOFT);
 ecu->ac_timer.function = j1939_ecu_timer_handler;
 INIT_LIST_HEAD(&ecu->list);

 j1939_priv_get(priv);
 ecu->priv = priv;
 list_add_tail(&ecu->list, &priv->ecus);

 return ecu;
}
