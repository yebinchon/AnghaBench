
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_3__ {scalar_t__ expires; int function; } ;
struct rose_sock {scalar_t__ idle; TYPE_1__ idletimer; } ;


 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int rose_idletimer_expiry ;
 struct rose_sock* rose_sk (struct sock*) ;

void rose_start_idletimer(struct sock *sk)
{
 struct rose_sock *rose = rose_sk(sk);

 del_timer(&rose->idletimer);

 if (rose->idle > 0) {
  rose->idletimer.function = rose_idletimer_expiry;
  rose->idletimer.expires = jiffies + rose->idle;

  add_timer(&rose->idletimer);
 }
}
