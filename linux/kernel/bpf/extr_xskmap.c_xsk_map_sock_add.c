
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_map_node {int node; } ;
struct xdp_sock {int map_list_lock; int map_list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void xsk_map_sock_add(struct xdp_sock *xs, struct xsk_map_node *node)
{
 spin_lock_bh(&xs->map_list_lock);
 list_add_tail(&node->node, &xs->map_list);
 spin_unlock_bh(&xs->map_list_lock);
}
