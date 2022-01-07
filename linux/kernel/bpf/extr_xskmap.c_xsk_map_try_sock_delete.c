
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_map {int lock; } ;
struct xdp_sock {int dummy; } ;


 struct xdp_sock* READ_ONCE (struct xdp_sock*) ;
 int WRITE_ONCE (struct xdp_sock*,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xsk_map_sock_delete (struct xdp_sock*,struct xdp_sock**) ;

void xsk_map_try_sock_delete(struct xsk_map *map, struct xdp_sock *xs,
        struct xdp_sock **map_entry)
{
 spin_lock_bh(&map->lock);
 if (READ_ONCE(*map_entry) == xs) {
  WRITE_ONCE(*map_entry, ((void*)0));
  xsk_map_sock_delete(xs, map_entry);
 }
 spin_unlock_bh(&map->lock);
}
