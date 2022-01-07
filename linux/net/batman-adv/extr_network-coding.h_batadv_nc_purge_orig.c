
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;



__attribute__((used)) static inline void
batadv_nc_purge_orig(struct batadv_priv *bat_priv,
       struct batadv_orig_node *orig_node,
       bool (*to_purge)(struct batadv_priv *,
          struct batadv_nc_node *))
{
}
