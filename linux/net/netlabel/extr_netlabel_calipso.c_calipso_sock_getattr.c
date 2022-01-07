
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct netlbl_lsm_secattr {int dummy; } ;
struct netlbl_calipso_ops {int (* sock_getattr ) (struct sock*,struct netlbl_lsm_secattr*) ;} ;


 int ENOMSG ;
 struct netlbl_calipso_ops* netlbl_calipso_ops_get () ;
 int stub1 (struct sock*,struct netlbl_lsm_secattr*) ;

int calipso_sock_getattr(struct sock *sk, struct netlbl_lsm_secattr *secattr)
{
 int ret_val = -ENOMSG;
 const struct netlbl_calipso_ops *ops = netlbl_calipso_ops_get();

 if (ops)
  ret_val = ops->sock_getattr(sk, secattr);
 return ret_val;
}
