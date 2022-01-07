
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_map {int dummy; } ;
struct xdp_sock {int dummy; } ;


 struct xsk_map* xsk_get_map_list_entry (struct xdp_sock*,struct xdp_sock***) ;
 int xsk_map_put (struct xsk_map*) ;
 int xsk_map_try_sock_delete (struct xsk_map*,struct xdp_sock*,struct xdp_sock**) ;

__attribute__((used)) static void xsk_delete_from_maps(struct xdp_sock *xs)
{
 struct xdp_sock **map_entry = ((void*)0);
 struct xsk_map *map;

 while ((map = xsk_get_map_list_entry(xs, &map_entry))) {
  xsk_map_try_sock_delete(map, xs, map_entry);
  xsk_map_put(map);
 }
}
