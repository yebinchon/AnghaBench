
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct batadv_tvlv_container {int list; } ;
struct TYPE_2__ {int container_list_lock; } ;
struct batadv_priv {TYPE_1__ tvlv; } ;


 int batadv_tvlv_container_put (struct batadv_tvlv_container*) ;
 int hlist_del (int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void batadv_tvlv_container_remove(struct batadv_priv *bat_priv,
      struct batadv_tvlv_container *tvlv)
{
 lockdep_assert_held(&bat_priv->tvlv.container_list_lock);

 if (!tvlv)
  return;

 hlist_del(&tvlv->list);


 batadv_tvlv_container_put(tvlv);
 batadv_tvlv_container_put(tvlv);
}
