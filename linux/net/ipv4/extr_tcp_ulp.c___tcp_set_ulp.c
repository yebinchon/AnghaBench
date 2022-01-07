
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_ulp_ops {int (* init ) (struct sock*) ;int owner; } ;
struct sock {int dummy; } ;
struct inet_connection_sock {struct tcp_ulp_ops const* icsk_ulp_ops; } ;


 int EEXIST ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int module_put (int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static int __tcp_set_ulp(struct sock *sk, const struct tcp_ulp_ops *ulp_ops)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 int err;

 err = -EEXIST;
 if (icsk->icsk_ulp_ops)
  goto out_err;

 err = ulp_ops->init(sk);
 if (err)
  goto out_err;

 icsk->icsk_ulp_ops = ulp_ops;
 return 0;
out_err:
 module_put(ulp_ops->owner);
 return err;
}
