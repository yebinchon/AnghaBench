
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct TYPE_2__ {int cookie; } ;


 TYPE_1__* hci_pi (struct sock*) ;

u32 hci_sock_get_cookie(struct sock *sk)
{
 return hci_pi(sk)->cookie;
}
