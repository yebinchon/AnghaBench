
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_err; } ;
struct atm_vcc {int flags; int local; } ;
struct atm_qos {int dummy; } ;


 int ATM_VF_RELEASED ;
 int ATM_VF_WAITING ;
 int DEFINE_WAIT (int ) ;
 int EUNATCH ;
 int TASK_UNINTERRUPTIBLE ;
 int as_modify ;
 int finish_wait (int ,int *) ;
 int prepare_to_wait (int ,int *,int ) ;
 int schedule () ;
 int set_bit (int ,int *) ;
 int sigd ;
 int sigd_enq2 (struct atm_vcc*,int ,int *,int *,int *,struct atm_qos*,int ) ;
 struct sock* sk_atm (struct atm_vcc*) ;
 int sk_sleep (struct sock*) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait ;

int svc_change_qos(struct atm_vcc *vcc, struct atm_qos *qos)
{
 struct sock *sk = sk_atm(vcc);
 DEFINE_WAIT(wait);

 set_bit(ATM_VF_WAITING, &vcc->flags);
 sigd_enq2(vcc, as_modify, ((void*)0), ((void*)0), &vcc->local, qos, 0);
 for (;;) {
  prepare_to_wait(sk_sleep(sk), &wait, TASK_UNINTERRUPTIBLE);
  if (!test_bit(ATM_VF_WAITING, &vcc->flags) ||
      test_bit(ATM_VF_RELEASED, &vcc->flags) || !sigd) {
   break;
  }
  schedule();
 }
 finish_wait(sk_sleep(sk), &wait);
 if (!sigd)
  return -EUNATCH;
 return -sk->sk_err;
}
