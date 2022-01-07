
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct netlbl_calipso_ops {int (* sock_delattr ) (struct sock*) ;} ;


 struct netlbl_calipso_ops* netlbl_calipso_ops_get () ;
 int stub1 (struct sock*) ;

void calipso_sock_delattr(struct sock *sk)
{
 const struct netlbl_calipso_ops *ops = netlbl_calipso_ops_get();

 if (ops)
  ops->sock_delattr(sk);
}
