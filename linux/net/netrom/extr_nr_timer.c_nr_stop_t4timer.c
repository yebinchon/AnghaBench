
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int t4timer; } ;


 TYPE_1__* nr_sk (struct sock*) ;
 int sk_stop_timer (struct sock*,int *) ;

void nr_stop_t4timer(struct sock *sk)
{
 sk_stop_timer(sk, &nr_sk(sk)->t4timer);
}
