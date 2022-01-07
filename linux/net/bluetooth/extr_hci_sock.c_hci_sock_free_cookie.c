
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int cookie; } ;


 TYPE_1__* hci_pi (struct sock*) ;
 int ida_simple_remove (int *,int) ;
 int sock_cookie_ida ;

__attribute__((used)) static void hci_sock_free_cookie(struct sock *sk)
{
 int id = hci_pi(sk)->cookie;

 if (id) {
  hci_pi(sk)->cookie = 0xffffffff;
  ida_simple_remove(&sock_cookie_ida, id);
 }
}
