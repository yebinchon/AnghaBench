
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {unsigned short channel; } ;


 TYPE_1__* hci_pi (struct sock*) ;

unsigned short hci_sock_get_channel(struct sock *sk)
{
 return hci_pi(sk)->channel;
}
