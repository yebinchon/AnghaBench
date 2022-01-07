
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct rhashtable_iter {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int rhash_table; } ;
struct ila_net {TYPE_1__ xlat; } ;
struct ila_map {int node; } ;
struct genl_info {int dummy; } ;
typedef int spinlock_t ;


 int EAGAIN ;
 scalar_t__ IS_ERR (struct ila_map*) ;
 int PTR_ERR (struct ila_map*) ;
 struct net* genl_info_net (struct genl_info*) ;
 int ila_free_node (struct ila_map*) ;
 int ila_net_id ;
 int * lock_from_ila_map (struct ila_net*,struct ila_map*) ;
 struct ila_net* net_generic (struct net*,int ) ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int rhashtable_walk_enter (int *,struct rhashtable_iter*) ;
 int rhashtable_walk_exit (struct rhashtable_iter*) ;
 struct ila_map* rhashtable_walk_next (struct rhashtable_iter*) ;
 int rhashtable_walk_start (struct rhashtable_iter*) ;
 int rhashtable_walk_stop (struct rhashtable_iter*) ;
 int rht_params ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ila_xlat_nl_cmd_flush(struct sk_buff *skb, struct genl_info *info)
{
 struct net *net = genl_info_net(info);
 struct ila_net *ilan = net_generic(net, ila_net_id);
 struct rhashtable_iter iter;
 struct ila_map *ila;
 spinlock_t *lock;
 int ret = 0;

 rhashtable_walk_enter(&ilan->xlat.rhash_table, &iter);
 rhashtable_walk_start(&iter);

 for (;;) {
  ila = rhashtable_walk_next(&iter);

  if (IS_ERR(ila)) {
   if (PTR_ERR(ila) == -EAGAIN)
    continue;
   ret = PTR_ERR(ila);
   goto done;
  } else if (!ila) {
   break;
  }

  lock = lock_from_ila_map(ilan, ila);

  spin_lock(lock);

  ret = rhashtable_remove_fast(&ilan->xlat.rhash_table,
          &ila->node, rht_params);
  if (!ret)
   ila_free_node(ila);

  spin_unlock(lock);

  if (ret)
   break;
 }

done:
 rhashtable_walk_stop(&iter);
 rhashtable_walk_exit(&iter);
 return ret;
}
