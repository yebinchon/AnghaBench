
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__* hci_pi (struct sock*) ;
 int set_bit (int,int *) ;

void hci_sock_set_flag(struct sock *sk, int nr)
{
 set_bit(nr, &hci_pi(sk)->flags);
}
