
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sock {int sk_timer; } ;
struct dn_scp {scalar_t__ persist; scalar_t__ state; int (* keepalive_fxn ) (struct sock*) ;scalar_t__ keepalive; scalar_t__ stamp; scalar_t__ (* persist_fxn ) (struct sock*) ;} ;


 scalar_t__ DN_RUN ;
 struct dn_scp* DN_SK (struct sock*) ;
 int HZ ;
 scalar_t__ SLOW_INTERVAL ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct sock* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 struct sock* sk ;
 int sk_reset_timer (struct sock*,int *,scalar_t__) ;
 int sk_timer ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 scalar_t__ stub1 (struct sock*) ;
 int stub2 (struct sock*) ;
 scalar_t__ time_after_eq (scalar_t__,scalar_t__) ;

__attribute__((used)) static void dn_slow_timer(struct timer_list *t)
{
 struct sock *sk = from_timer(sk, t, sk_timer);
 struct dn_scp *scp = DN_SK(sk);

 bh_lock_sock(sk);

 if (sock_owned_by_user(sk)) {
  sk_reset_timer(sk, &sk->sk_timer, jiffies + HZ / 10);
  goto out;
 }
 if (scp->persist && scp->persist_fxn) {
  if (scp->persist <= SLOW_INTERVAL) {
   scp->persist = 0;

   if (scp->persist_fxn(sk))
    goto out;
  } else {
   scp->persist -= SLOW_INTERVAL;
  }
 }
 if (scp->keepalive && scp->keepalive_fxn && (scp->state == DN_RUN)) {
  if (time_after_eq(jiffies, scp->stamp + scp->keepalive))
   scp->keepalive_fxn(sk);
 }

 sk_reset_timer(sk, &sk->sk_timer, jiffies + SLOW_INTERVAL);
out:
 bh_unlock_sock(sk);
 sock_put(sk);
}
