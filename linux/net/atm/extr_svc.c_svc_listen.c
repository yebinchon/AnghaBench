
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_max_ack_backlog; int sk_err; } ;
struct atm_vcc {int flags; int local; } ;


 int ATM_BACKLOG_DEFAULT ;
 struct atm_vcc* ATM_SD (struct socket*) ;
 int ATM_VF_LISTEN ;
 int ATM_VF_SESSION ;
 int ATM_VF_WAITING ;
 int DEFINE_WAIT (int ) ;
 int EADDRINUSE ;
 int EINVAL ;
 int EUNATCH ;
 int TASK_UNINTERRUPTIBLE ;
 int as_listen ;
 int finish_wait (int ,int *) ;
 int lock_sock (struct sock*) ;
 int pr_debug (char*,struct atm_vcc*) ;
 int prepare_to_wait (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 int schedule () ;
 int set_bit (int ,int *) ;
 int sigd ;
 int sigd_enq (struct atm_vcc*,int ,int *,int *,int *) ;
 int sk_sleep (struct sock*) ;
 scalar_t__ test_bit (int ,int *) ;
 int vcc_insert_socket (struct sock*) ;
 int wait ;

__attribute__((used)) static int svc_listen(struct socket *sock, int backlog)
{
 DEFINE_WAIT(wait);
 struct sock *sk = sock->sk;
 struct atm_vcc *vcc = ATM_SD(sock);
 int error;

 pr_debug("%p\n", vcc);
 lock_sock(sk);

 if (test_bit(ATM_VF_SESSION, &vcc->flags)) {
  error = -EINVAL;
  goto out;
 }
 if (test_bit(ATM_VF_LISTEN, &vcc->flags)) {
  error = -EADDRINUSE;
  goto out;
 }
 set_bit(ATM_VF_WAITING, &vcc->flags);
 sigd_enq(vcc, as_listen, ((void*)0), ((void*)0), &vcc->local);
 for (;;) {
  prepare_to_wait(sk_sleep(sk), &wait, TASK_UNINTERRUPTIBLE);
  if (!test_bit(ATM_VF_WAITING, &vcc->flags) || !sigd)
   break;
  schedule();
 }
 finish_wait(sk_sleep(sk), &wait);
 if (!sigd) {
  error = -EUNATCH;
  goto out;
 }
 set_bit(ATM_VF_LISTEN, &vcc->flags);
 vcc_insert_socket(sk);
 sk->sk_max_ack_backlog = backlog > 0 ? backlog : ATM_BACKLOG_DEFAULT;
 error = -sk->sk_err;
out:
 release_sock(sk);
 return error;
}
