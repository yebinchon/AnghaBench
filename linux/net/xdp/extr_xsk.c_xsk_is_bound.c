
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_sock {int state; } ;


 scalar_t__ READ_ONCE (int ) ;
 scalar_t__ XSK_BOUND ;
 int smp_rmb () ;

__attribute__((used)) static bool xsk_is_bound(struct xdp_sock *xs)
{
 if (READ_ONCE(xs->state) == XSK_BOUND) {

  smp_rmb();
  return 1;
 }
 return 0;
}
