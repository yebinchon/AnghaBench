
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int cookie; int comm; } ;


 int GFP_KERNEL ;
 int current ;
 int get_task_comm (int ,int ) ;
 TYPE_1__* hci_pi (struct sock*) ;
 int ida_simple_get (int *,int,int ,int ) ;
 int sock_cookie_ida ;

__attribute__((used)) static bool hci_sock_gen_cookie(struct sock *sk)
{
 int id = hci_pi(sk)->cookie;

 if (!id) {
  id = ida_simple_get(&sock_cookie_ida, 1, 0, GFP_KERNEL);
  if (id < 0)
   id = 0xffffffff;

  hci_pi(sk)->cookie = id;
  get_task_comm(hci_pi(sk)->comm, current);
  return 1;
 }

 return 0;
}
