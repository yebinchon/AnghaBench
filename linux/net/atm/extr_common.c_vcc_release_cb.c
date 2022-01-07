
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct atm_vcc {int (* release_cb ) (struct atm_vcc*) ;} ;


 struct atm_vcc* atm_sk (struct sock*) ;
 int stub1 (struct atm_vcc*) ;

__attribute__((used)) static void vcc_release_cb(struct sock *sk)
{
 struct atm_vcc *vcc = atm_sk(sk);

 if (vcc->release_cb)
  vcc->release_cb(vcc);
}
