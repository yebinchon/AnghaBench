
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_type; } ;
struct TYPE_2__ {int flags; } ;


 int BT_DBG (char*,struct sock*) ;
 TYPE_1__* bt_sk (struct sock*) ;
 int security_sk_clone (struct sock*,struct sock*) ;

__attribute__((used)) static void sco_sock_init(struct sock *sk, struct sock *parent)
{
 BT_DBG("sk %p", sk);

 if (parent) {
  sk->sk_type = parent->sk_type;
  bt_sk(sk)->flags = bt_sk(parent)->flags;
  security_sk_clone(parent, sk);
 }
}
