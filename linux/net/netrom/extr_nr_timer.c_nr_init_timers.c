
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int function; } ;
struct sock {TYPE_1__ sk_timer; } ;
struct nr_sock {int idletimer; int t4timer; int t2timer; int t1timer; } ;


 int nr_heartbeat_expiry ;
 int nr_idletimer_expiry ;
 struct nr_sock* nr_sk (struct sock*) ;
 int nr_t1timer_expiry ;
 int nr_t2timer_expiry ;
 int nr_t4timer_expiry ;
 int timer_setup (int *,int ,int ) ;

void nr_init_timers(struct sock *sk)
{
 struct nr_sock *nr = nr_sk(sk);

 timer_setup(&nr->t1timer, nr_t1timer_expiry, 0);
 timer_setup(&nr->t2timer, nr_t2timer_expiry, 0);
 timer_setup(&nr->t4timer, nr_t4timer_expiry, 0);
 timer_setup(&nr->idletimer, nr_idletimer_expiry, 0);


 sk->sk_timer.function = nr_heartbeat_expiry;
}
