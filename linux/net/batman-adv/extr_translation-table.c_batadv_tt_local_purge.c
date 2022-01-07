
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct hlist_head {int dummy; } ;
struct TYPE_2__ {struct batadv_hashtable* local_hash; } ;
struct batadv_priv {TYPE_1__ tt; } ;
struct batadv_hashtable {size_t size; int * list_locks; struct hlist_head* table; } ;
typedef int spinlock_t ;


 int batadv_tt_local_purge_list (struct batadv_priv*,struct hlist_head*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void batadv_tt_local_purge(struct batadv_priv *bat_priv,
      int timeout)
{
 struct batadv_hashtable *hash = bat_priv->tt.local_hash;
 struct hlist_head *head;
 spinlock_t *list_lock;
 u32 i;

 for (i = 0; i < hash->size; i++) {
  head = &hash->table[i];
  list_lock = &hash->list_locks[i];

  spin_lock_bh(list_lock);
  batadv_tt_local_purge_list(bat_priv, head, timeout);
  spin_unlock_bh(list_lock);
 }
}
