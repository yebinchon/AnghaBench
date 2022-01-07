
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int t1timer; } ;


 TYPE_1__* nr_sk (struct sock*) ;
 int timer_pending (int *) ;

int nr_t1timer_running(struct sock *sk)
{
 return timer_pending(&nr_sk(sk)->t1timer);
}
