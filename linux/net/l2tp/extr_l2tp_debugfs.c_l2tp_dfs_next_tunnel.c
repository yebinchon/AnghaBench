
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2tp_dfs_seq_data {int tunnel_idx; int net; scalar_t__ tunnel; } ;


 int l2tp_tunnel_dec_refcount (scalar_t__) ;
 scalar_t__ l2tp_tunnel_get_nth (int ,int ) ;

__attribute__((used)) static void l2tp_dfs_next_tunnel(struct l2tp_dfs_seq_data *pd)
{

 if (pd->tunnel)
  l2tp_tunnel_dec_refcount(pd->tunnel);

 pd->tunnel = l2tp_tunnel_get_nth(pd->net, pd->tunnel_idx);
 pd->tunnel_idx++;
}
