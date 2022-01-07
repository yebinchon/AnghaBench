
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ state; struct sock* sk; } ;
struct sockaddr_atmsvc {scalar_t__ sas_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_err; } ;
struct atm_vcc {int flags; struct sockaddr_atmsvc local; } ;


 scalar_t__ AF_ATMSVC ;
 struct atm_vcc* ATM_SD (struct socket*) ;
 int ATM_VF_BOUND ;
 int ATM_VF_HASQOS ;
 int ATM_VF_REGIS ;
 int ATM_VF_WAITING ;
 int DEFINE_WAIT (int ) ;
 int EAFNOSUPPORT ;
 int EBADFD ;
 int EINVAL ;
 int EISCONN ;
 int EUNATCH ;
 scalar_t__ SS_CONNECTED ;
 scalar_t__ SS_UNCONNECTED ;
 int TASK_UNINTERRUPTIBLE ;
 int as_bind ;
 int clear_bit (int ,int *) ;
 int finish_wait (int ,int *) ;
 int lock_sock (struct sock*) ;
 int prepare_to_wait (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 int schedule () ;
 int set_bit (int ,int *) ;
 int sigd ;
 int sigd_enq (struct atm_vcc*,int ,int *,int *,struct sockaddr_atmsvc*) ;
 int sk_sleep (struct sock*) ;
 int test_bit (int ,int *) ;
 int wait ;

__attribute__((used)) static int svc_bind(struct socket *sock, struct sockaddr *sockaddr,
      int sockaddr_len)
{
 DEFINE_WAIT(wait);
 struct sock *sk = sock->sk;
 struct sockaddr_atmsvc *addr;
 struct atm_vcc *vcc;
 int error;

 if (sockaddr_len != sizeof(struct sockaddr_atmsvc))
  return -EINVAL;
 lock_sock(sk);
 if (sock->state == SS_CONNECTED) {
  error = -EISCONN;
  goto out;
 }
 if (sock->state != SS_UNCONNECTED) {
  error = -EINVAL;
  goto out;
 }
 vcc = ATM_SD(sock);
 addr = (struct sockaddr_atmsvc *) sockaddr;
 if (addr->sas_family != AF_ATMSVC) {
  error = -EAFNOSUPPORT;
  goto out;
 }
 clear_bit(ATM_VF_BOUND, &vcc->flags);


 if (!test_bit(ATM_VF_HASQOS, &vcc->flags)) {
  error = -EBADFD;
  goto out;
 }
 vcc->local = *addr;
 set_bit(ATM_VF_WAITING, &vcc->flags);
 sigd_enq(vcc, as_bind, ((void*)0), ((void*)0), &vcc->local);
 for (;;) {
  prepare_to_wait(sk_sleep(sk), &wait, TASK_UNINTERRUPTIBLE);
  if (!test_bit(ATM_VF_WAITING, &vcc->flags) || !sigd)
   break;
  schedule();
 }
 finish_wait(sk_sleep(sk), &wait);
 clear_bit(ATM_VF_REGIS, &vcc->flags);
 if (!sigd) {
  error = -EUNATCH;
  goto out;
 }
 if (!sk->sk_err)
  set_bit(ATM_VF_BOUND, &vcc->flags);
 error = -sk->sk_err;
out:
 release_sock(sk);
 return error;
}
