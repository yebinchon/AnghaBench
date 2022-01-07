
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__* hci_pi (struct sock*) ;
 int test_bit (int,int *) ;

int hci_sock_test_flag(struct sock *sk, int nr)
{
 return test_bit(nr, &hci_pi(sk)->flags);
}
