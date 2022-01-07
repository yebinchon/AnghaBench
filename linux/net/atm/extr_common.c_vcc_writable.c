
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {scalar_t__ sk_sndbuf; int sk_wmem_alloc; } ;
struct TYPE_3__ {scalar_t__ max_sdu; } ;
struct TYPE_4__ {TYPE_1__ txtp; } ;
struct atm_vcc {TYPE_2__ qos; } ;


 struct atm_vcc* atm_sk (struct sock*) ;
 scalar_t__ refcount_read (int *) ;

__attribute__((used)) static inline int vcc_writable(struct sock *sk)
{
 struct atm_vcc *vcc = atm_sk(sk);

 return (vcc->qos.txtp.max_sdu +
  refcount_read(&sk->sk_wmem_alloc)) <= sk->sk_sndbuf;
}
