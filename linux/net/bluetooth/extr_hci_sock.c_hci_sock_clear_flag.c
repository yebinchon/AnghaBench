
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int clear_bit (int,int *) ;
 TYPE_1__* hci_pi (struct sock*) ;

void hci_sock_clear_flag(struct sock *sk, int nr)
{
 clear_bit(nr, &hci_pi(sk)->flags);
}
