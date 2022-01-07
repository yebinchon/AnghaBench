
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {struct xfrm_state* tunnel; int tunnel_users; } ;


 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int xfrm_state_delete (struct xfrm_state*) ;
 int xfrm_state_put_sync (struct xfrm_state*) ;

void xfrm_state_delete_tunnel(struct xfrm_state *x)
{
 if (x->tunnel) {
  struct xfrm_state *t = x->tunnel;

  if (atomic_read(&t->tunnel_users) == 2)
   xfrm_state_delete(t);
  atomic_dec(&t->tunnel_users);
  xfrm_state_put_sync(t);
  x->tunnel = ((void*)0);
 }
}
