
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_3__ {scalar_t__ expires; int function; } ;
struct rose_sock {TYPE_1__ timer; scalar_t__ t2; } ;


 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 struct rose_sock* rose_sk (struct sock*) ;
 int rose_timer_expiry ;

void rose_start_t2timer(struct sock *sk)
{
 struct rose_sock *rose = rose_sk(sk);

 del_timer(&rose->timer);

 rose->timer.function = rose_timer_expiry;
 rose->timer.expires = jiffies + rose->t2;

 add_timer(&rose->timer);
}
