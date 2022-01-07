
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sockaddr_atmsvc {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_err_soft; } ;
struct atm_vcc {int flags; } ;


 struct atm_vcc* ATM_SD (struct socket*) ;
 int ATM_VF_WAITING ;
 int DEFINE_WAIT (int ) ;
 int EINPROGRESS ;
 int O_NONBLOCK ;
 int TASK_INTERRUPTIBLE ;
 int as_addparty ;
 int finish_wait (int ,int *) ;
 int lock_sock (struct sock*) ;
 int pr_debug (char*) ;
 int prepare_to_wait (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 int schedule () ;
 int set_bit (int ,int *) ;
 int sigd ;
 int sigd_enq (struct atm_vcc*,int ,int *,int *,struct sockaddr_atmsvc*) ;
 int sk_sleep (struct sock*) ;
 int test_bit (int ,int *) ;
 int wait ;
 int xchg (int *,int ) ;

__attribute__((used)) static int svc_addparty(struct socket *sock, struct sockaddr *sockaddr,
   int sockaddr_len, int flags)
{
 DEFINE_WAIT(wait);
 struct sock *sk = sock->sk;
 struct atm_vcc *vcc = ATM_SD(sock);
 int error;

 lock_sock(sk);
 set_bit(ATM_VF_WAITING, &vcc->flags);
 sigd_enq(vcc, as_addparty, ((void*)0), ((void*)0),
   (struct sockaddr_atmsvc *) sockaddr);
 if (flags & O_NONBLOCK) {
  error = -EINPROGRESS;
  goto out;
 }
 pr_debug("added wait queue\n");
 for (;;) {
  prepare_to_wait(sk_sleep(sk), &wait, TASK_INTERRUPTIBLE);
  if (!test_bit(ATM_VF_WAITING, &vcc->flags) || !sigd)
   break;
  schedule();
 }
 finish_wait(sk_sleep(sk), &wait);
 error = -xchg(&sk->sk_err_soft, 0);
out:
 release_sock(sk);
 return error;
}
