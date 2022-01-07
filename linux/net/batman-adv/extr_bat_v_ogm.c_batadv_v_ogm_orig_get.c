
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct batadv_priv {int orig_hash; } ;
struct batadv_orig_node {int hash_entry; int refcount; } ;


 int batadv_choose_orig ;
 int batadv_compare_orig ;
 int batadv_hash_add (int ,int ,int ,struct batadv_orig_node*,int *) ;
 struct batadv_orig_node* batadv_orig_hash_find (struct batadv_priv*,int const*) ;
 struct batadv_orig_node* batadv_orig_node_new (struct batadv_priv*,int const*) ;
 int batadv_orig_node_put (struct batadv_orig_node*) ;
 int kref_get (int *) ;

struct batadv_orig_node *batadv_v_ogm_orig_get(struct batadv_priv *bat_priv,
            const u8 *addr)
{
 struct batadv_orig_node *orig_node;
 int hash_added;

 orig_node = batadv_orig_hash_find(bat_priv, addr);
 if (orig_node)
  return orig_node;

 orig_node = batadv_orig_node_new(bat_priv, addr);
 if (!orig_node)
  return ((void*)0);

 kref_get(&orig_node->refcount);
 hash_added = batadv_hash_add(bat_priv->orig_hash, batadv_compare_orig,
         batadv_choose_orig, orig_node,
         &orig_node->hash_entry);
 if (hash_added != 0) {

  batadv_orig_node_put(orig_node);
  batadv_orig_node_put(orig_node);
  orig_node = ((void*)0);
 }

 return orig_node;
}
