
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int idletimer; } ;


 int del_timer (int *) ;
 TYPE_1__* rose_sk (struct sock*) ;

void rose_stop_idletimer(struct sock *sk)
{
 del_timer(&rose_sk(sk)->idletimer);
}
