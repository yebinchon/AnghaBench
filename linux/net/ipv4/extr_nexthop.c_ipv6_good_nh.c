
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neighbour {int nud_state; } ;
struct fib6_nh {int fib_nh_gw6; int fib_nh_dev; } ;


 int NUD_REACHABLE ;
 int NUD_VALID ;
 struct neighbour* __ipv6_neigh_lookup_noref_stub (int ,int *) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;

__attribute__((used)) static bool ipv6_good_nh(const struct fib6_nh *nh)
{
 int state = NUD_REACHABLE;
 struct neighbour *n;

 rcu_read_lock_bh();

 n = __ipv6_neigh_lookup_noref_stub(nh->fib_nh_dev, &nh->fib_nh_gw6);
 if (n)
  state = n->nud_state;

 rcu_read_unlock_bh();

 return !!(state & NUD_VALID);
}
