
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sock {size_t sk_protocol; } ;
struct netlink_table {int dummy; } ;
struct TYPE_2__ {scalar_t__ portid; scalar_t__ bound; } ;


 int EADDRINUSE ;
 int EBUSY ;
 int EEXIST ;
 int EOVERFLOW ;
 int __netlink_insert (struct netlink_table*,struct sock*) ;
 int lock_sock (struct sock*) ;
 struct netlink_table* nl_table ;
 TYPE_1__* nlk_sk (struct sock*) ;
 int release_sock (struct sock*) ;
 int smp_wmb () ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int netlink_insert(struct sock *sk, u32 portid)
{
 struct netlink_table *table = &nl_table[sk->sk_protocol];
 int err;

 lock_sock(sk);

 err = nlk_sk(sk)->portid == portid ? 0 : -EBUSY;
 if (nlk_sk(sk)->bound)
  goto err;

 nlk_sk(sk)->portid = portid;
 sock_hold(sk);

 err = __netlink_insert(table, sk);
 if (err) {



  if (unlikely(err == -EBUSY))
   err = -EOVERFLOW;
  if (err == -EEXIST)
   err = -EADDRINUSE;
  sock_put(sk);
  goto err;
 }


 smp_wmb();
 nlk_sk(sk)->bound = portid;

err:
 release_sock(sk);
 return err;
}
