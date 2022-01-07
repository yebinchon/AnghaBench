
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct batadv_tvlv_gateway_data {scalar_t__ bandwidth_down; scalar_t__ bandwidth_up; } ;
struct TYPE_2__ {int generation; int gateway_list; int list_lock; } ;
struct batadv_priv {TYPE_1__ gw; } ;
struct batadv_orig_node {int orig; int refcount; } ;
struct batadv_gw_node {int bandwidth_down; int bandwidth_up; int list; int refcount; struct batadv_orig_node* orig_node; } ;


 int BATADV_DBG_BATMAN ;
 int GFP_ATOMIC ;
 int INIT_HLIST_NODE (int *) ;
 int batadv_dbg (int ,struct batadv_priv*,char*,int ,int,int,int,int) ;
 int batadv_gw_node_put (struct batadv_gw_node*) ;
 int hlist_add_head_rcu (int *,int *) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 struct batadv_gw_node* kzalloc (int,int ) ;
 int lockdep_assert_held (int *) ;
 int ntohl (scalar_t__) ;

__attribute__((used)) static void batadv_gw_node_add(struct batadv_priv *bat_priv,
          struct batadv_orig_node *orig_node,
          struct batadv_tvlv_gateway_data *gateway)
{
 struct batadv_gw_node *gw_node;

 lockdep_assert_held(&bat_priv->gw.list_lock);

 if (gateway->bandwidth_down == 0)
  return;

 gw_node = kzalloc(sizeof(*gw_node), GFP_ATOMIC);
 if (!gw_node)
  return;

 kref_init(&gw_node->refcount);
 INIT_HLIST_NODE(&gw_node->list);
 kref_get(&orig_node->refcount);
 gw_node->orig_node = orig_node;
 gw_node->bandwidth_down = ntohl(gateway->bandwidth_down);
 gw_node->bandwidth_up = ntohl(gateway->bandwidth_up);

 kref_get(&gw_node->refcount);
 hlist_add_head_rcu(&gw_node->list, &bat_priv->gw.gateway_list);
 bat_priv->gw.generation++;

 batadv_dbg(BATADV_DBG_BATMAN, bat_priv,
     "Found new gateway %pM -> gw bandwidth: %u.%u/%u.%u MBit\n",
     orig_node->orig,
     ntohl(gateway->bandwidth_down) / 10,
     ntohl(gateway->bandwidth_down) % 10,
     ntohl(gateway->bandwidth_up) / 10,
     ntohl(gateway->bandwidth_up) % 10);


 batadv_gw_node_put(gw_node);
}
