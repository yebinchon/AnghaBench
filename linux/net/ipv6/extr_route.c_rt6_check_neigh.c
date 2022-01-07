
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neighbour {int nud_state; int lock; } ;
struct fib6_nh {int fib_nh_gw6; int fib_nh_dev; } ;
typedef enum rt6_nud_state { ____Placeholder_rt6_nud_state } rt6_nud_state ;


 int CONFIG_IPV6_ROUTER_PREF ;
 scalar_t__ IS_ENABLED (int ) ;
 int NUD_FAILED ;
 int NUD_VALID ;
 int RT6_NUD_FAIL_DO_RR ;
 int RT6_NUD_FAIL_HARD ;
 int RT6_NUD_FAIL_PROBE ;
 int RT6_NUD_SUCCEED ;
 struct neighbour* __ipv6_neigh_lookup_noref (int ,int *) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static enum rt6_nud_state rt6_check_neigh(const struct fib6_nh *fib6_nh)
{
 enum rt6_nud_state ret = RT6_NUD_FAIL_HARD;
 struct neighbour *neigh;

 rcu_read_lock_bh();
 neigh = __ipv6_neigh_lookup_noref(fib6_nh->fib_nh_dev,
       &fib6_nh->fib_nh_gw6);
 if (neigh) {
  read_lock(&neigh->lock);
  if (neigh->nud_state & NUD_VALID)
   ret = RT6_NUD_SUCCEED;






  read_unlock(&neigh->lock);
 } else {
  ret = IS_ENABLED(CONFIG_IPV6_ROUTER_PREF) ?
        RT6_NUD_SUCCEED : RT6_NUD_FAIL_DO_RR;
 }
 rcu_read_unlock_bh();

 return ret;
}
