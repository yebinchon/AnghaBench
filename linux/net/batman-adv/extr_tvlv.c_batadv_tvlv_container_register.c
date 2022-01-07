
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
typedef scalar_t__ u16 ;
struct TYPE_3__ {int len; void* type; void* version; } ;
struct batadv_tvlv_container {int list; int refcount; TYPE_1__ tvlv_hdr; } ;
struct TYPE_4__ {int container_list_lock; int container_list; } ;
struct batadv_priv {TYPE_2__ tvlv; } ;


 int GFP_ATOMIC ;
 int INIT_HLIST_NODE (int *) ;
 struct batadv_tvlv_container* batadv_tvlv_container_get (struct batadv_priv*,void*,void*) ;
 int batadv_tvlv_container_put (struct batadv_tvlv_container*) ;
 int batadv_tvlv_container_remove (struct batadv_priv*,struct batadv_tvlv_container*) ;
 int hlist_add_head (int *,int *) ;
 int htons (scalar_t__) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 struct batadv_tvlv_container* kzalloc (scalar_t__,int ) ;
 int memcpy (struct batadv_tvlv_container*,void*,int ) ;
 int ntohs (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void batadv_tvlv_container_register(struct batadv_priv *bat_priv,
        u8 type, u8 version,
        void *tvlv_value, u16 tvlv_value_len)
{
 struct batadv_tvlv_container *tvlv_old, *tvlv_new;

 if (!tvlv_value)
  tvlv_value_len = 0;

 tvlv_new = kzalloc(sizeof(*tvlv_new) + tvlv_value_len, GFP_ATOMIC);
 if (!tvlv_new)
  return;

 tvlv_new->tvlv_hdr.version = version;
 tvlv_new->tvlv_hdr.type = type;
 tvlv_new->tvlv_hdr.len = htons(tvlv_value_len);

 memcpy(tvlv_new + 1, tvlv_value, ntohs(tvlv_new->tvlv_hdr.len));
 INIT_HLIST_NODE(&tvlv_new->list);
 kref_init(&tvlv_new->refcount);

 spin_lock_bh(&bat_priv->tvlv.container_list_lock);
 tvlv_old = batadv_tvlv_container_get(bat_priv, type, version);
 batadv_tvlv_container_remove(bat_priv, tvlv_old);

 kref_get(&tvlv_new->refcount);
 hlist_add_head(&tvlv_new->list, &bat_priv->tvlv.container_list);
 spin_unlock_bh(&bat_priv->tvlv.container_list_lock);


 batadv_tvlv_container_put(tvlv_new);
}
