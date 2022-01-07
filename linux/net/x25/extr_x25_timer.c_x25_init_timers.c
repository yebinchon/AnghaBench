
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x25_sock {int timer; } ;
struct TYPE_2__ {int function; } ;
struct sock {TYPE_1__ sk_timer; } ;


 int timer_setup (int *,int ,int ) ;
 int x25_heartbeat_expiry ;
 struct x25_sock* x25_sk (struct sock*) ;
 int x25_timer_expiry ;

void x25_init_timers(struct sock *sk)
{
 struct x25_sock *x25 = x25_sk(sk);

 timer_setup(&x25->timer, x25_timer_expiry, 0);


 sk->sk_timer.function = x25_heartbeat_expiry;
}
