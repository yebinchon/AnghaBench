
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int timer; } ;


 int del_timer (int *) ;
 TYPE_1__* x25_sk (struct sock*) ;

void x25_stop_timer(struct sock *sk)
{
 del_timer(&x25_sk(sk)->timer);
}
