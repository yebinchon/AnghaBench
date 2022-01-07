
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int flags; } ;
struct batadv_tt_local_entry {TYPE_1__ common; } ;
struct batadv_tt_common_entry {unsigned char const* addr; unsigned short vid; int flags; int hash_entry; int refcount; void* added_at; } ;
struct batadv_tt_global_entry {struct batadv_tt_common_entry common; void* roam_at; int list_lock; int orig_list_count; int orig_list; } ;
struct TYPE_4__ {int global_hash; } ;
struct batadv_priv {TYPE_2__ tt; } ;
struct batadv_orig_node {int orig; } ;


 int BATADV_DBG_TT ;
 int BATADV_TT_CLIENT_NEW ;
 int BATADV_TT_CLIENT_ROAM ;
 int BATADV_TT_CLIENT_TEMP ;
 int BATADV_TT_CLIENT_WIFI ;
 int BATADV_TT_SYNC_MASK ;
 int GFP_ATOMIC ;
 int INIT_HLIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 scalar_t__ batadv_bla_is_backbone_gw_orig (struct batadv_priv*,int ,unsigned short) ;
 int batadv_choose_tt ;
 int batadv_compare_tt ;
 int batadv_dbg (int ,struct batadv_priv*,char*,unsigned char const*,int ,int ) ;
 int batadv_hash_add (int ,int ,int ,struct batadv_tt_common_entry*,int *) ;
 int batadv_print_vid (unsigned short) ;
 int batadv_tg_cache ;
 int batadv_tt_global_del_orig_list (struct batadv_tt_global_entry*) ;
 scalar_t__ batadv_tt_global_entry_has_orig (struct batadv_tt_global_entry*,struct batadv_orig_node*,int *) ;
 int batadv_tt_global_entry_put (struct batadv_tt_global_entry*) ;
 struct batadv_tt_global_entry* batadv_tt_global_hash_find (struct batadv_priv*,unsigned char const*,unsigned short) ;
 int batadv_tt_global_orig_entry_add (struct batadv_tt_global_entry*,struct batadv_orig_node*,int ,int) ;
 int batadv_tt_local_entry_put (struct batadv_tt_local_entry*) ;
 struct batadv_tt_local_entry* batadv_tt_local_hash_find (struct batadv_priv*,unsigned char const*,unsigned short) ;
 int batadv_tt_local_remove (struct batadv_priv*,unsigned char const*,unsigned short,char*,int) ;
 int ether_addr_copy (unsigned char const*,unsigned char const*) ;
 scalar_t__ is_multicast_ether_addr (unsigned char const*) ;
 void* jiffies ;
 struct batadv_tt_global_entry* kmem_cache_zalloc (int ,int ) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 int spin_lock_init (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool batadv_tt_global_add(struct batadv_priv *bat_priv,
     struct batadv_orig_node *orig_node,
     const unsigned char *tt_addr,
     unsigned short vid, u16 flags, u8 ttvn)
{
 struct batadv_tt_global_entry *tt_global_entry;
 struct batadv_tt_local_entry *tt_local_entry;
 bool ret = 0;
 int hash_added;
 struct batadv_tt_common_entry *common;
 u16 local_flags;


 if (batadv_bla_is_backbone_gw_orig(bat_priv, orig_node->orig, vid))
  return 1;

 tt_global_entry = batadv_tt_global_hash_find(bat_priv, tt_addr, vid);
 tt_local_entry = batadv_tt_local_hash_find(bat_priv, tt_addr, vid);





 if ((flags & BATADV_TT_CLIENT_TEMP) && tt_local_entry &&
     !(tt_local_entry->common.flags & BATADV_TT_CLIENT_NEW))
  goto out;

 if (!tt_global_entry) {
  tt_global_entry = kmem_cache_zalloc(batadv_tg_cache,
          GFP_ATOMIC);
  if (!tt_global_entry)
   goto out;

  common = &tt_global_entry->common;
  ether_addr_copy(common->addr, tt_addr);
  common->vid = vid;

  if (!is_multicast_ether_addr(common->addr))
   common->flags = flags & (~BATADV_TT_SYNC_MASK);

  tt_global_entry->roam_at = 0;




  if (flags & BATADV_TT_CLIENT_ROAM)
   tt_global_entry->roam_at = jiffies;
  kref_init(&common->refcount);
  common->added_at = jiffies;

  INIT_HLIST_HEAD(&tt_global_entry->orig_list);
  atomic_set(&tt_global_entry->orig_list_count, 0);
  spin_lock_init(&tt_global_entry->list_lock);

  kref_get(&common->refcount);
  hash_added = batadv_hash_add(bat_priv->tt.global_hash,
          batadv_compare_tt,
          batadv_choose_tt, common,
          &common->hash_entry);

  if (unlikely(hash_added != 0)) {

   batadv_tt_global_entry_put(tt_global_entry);
   goto out_remove;
  }
 } else {
  common = &tt_global_entry->common;
  if (flags & BATADV_TT_CLIENT_TEMP) {
   if (!(common->flags & BATADV_TT_CLIENT_TEMP))
    goto out;
   if (batadv_tt_global_entry_has_orig(tt_global_entry,
           orig_node, ((void*)0)))
    goto out_remove;
   batadv_tt_global_del_orig_list(tt_global_entry);
   goto add_orig_entry;
  }







  if (common->flags & BATADV_TT_CLIENT_TEMP) {
   batadv_tt_global_del_orig_list(tt_global_entry);
   common->flags &= ~BATADV_TT_CLIENT_TEMP;
  }





  if (!is_multicast_ether_addr(common->addr))
   common->flags |= flags & (~BATADV_TT_SYNC_MASK);
  if (common->flags & BATADV_TT_CLIENT_ROAM) {
   batadv_tt_global_del_orig_list(tt_global_entry);
   common->flags &= ~BATADV_TT_CLIENT_ROAM;
   tt_global_entry->roam_at = 0;
  }
 }
add_orig_entry:

 batadv_tt_global_orig_entry_add(tt_global_entry, orig_node, ttvn,
     flags & BATADV_TT_SYNC_MASK);

 batadv_dbg(BATADV_DBG_TT, bat_priv,
     "Creating new global tt entry: %pM (vid: %d, via %pM)\n",
     common->addr, batadv_print_vid(common->vid),
     orig_node->orig);
 ret = 1;

out_remove:



 if (is_multicast_ether_addr(tt_addr))
  goto out;


 local_flags = batadv_tt_local_remove(bat_priv, tt_addr, vid,
          "global tt received",
          flags & BATADV_TT_CLIENT_ROAM);
 tt_global_entry->common.flags |= local_flags & BATADV_TT_CLIENT_WIFI;

 if (!(flags & BATADV_TT_CLIENT_ROAM))



  tt_global_entry->common.flags &= ~BATADV_TT_CLIENT_ROAM;

out:
 if (tt_global_entry)
  batadv_tt_global_entry_put(tt_global_entry);
 if (tt_local_entry)
  batadv_tt_local_entry_put(tt_local_entry);
 return ret;
}
