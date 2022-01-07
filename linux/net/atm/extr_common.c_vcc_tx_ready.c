
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_sndbuf; } ;
struct atm_vcc {int dummy; } ;


 int atm_may_send (struct atm_vcc*,unsigned int) ;
 int pr_debug (char*,scalar_t__,unsigned int,int ) ;
 struct sock* sk_atm (struct atm_vcc*) ;
 scalar_t__ sk_wmem_alloc_get (struct sock*) ;

__attribute__((used)) static bool vcc_tx_ready(struct atm_vcc *vcc, unsigned int size)
{
 struct sock *sk = sk_atm(vcc);

 if (sk_wmem_alloc_get(sk) && !atm_may_send(vcc, size)) {
  pr_debug("Sorry: wmem_alloc = %d, size = %d, sndbuf = %d\n",
    sk_wmem_alloc_get(sk), size, sk->sk_sndbuf);
  return 0;
 }
 return 1;
}
