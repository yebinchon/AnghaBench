
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {int state; struct sock* sk; } ;
struct sockaddr_atmsvc {int sas_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_err; } ;
struct TYPE_6__ {scalar_t__ min_pcr; scalar_t__ pcr; int max_pcr; int traffic_class; } ;
struct TYPE_4__ {int traffic_class; } ;
struct TYPE_5__ {TYPE_3__ txtp; TYPE_1__ rxtp; } ;
struct atm_vcc {int vci; int vpi; int itf; TYPE_2__ qos; int flags; struct sockaddr_atmsvc remote; } ;


 int AF_ATMSVC ;
 int ATM_ANYCLASS ;
 struct atm_vcc* ATM_SD (struct socket*) ;
 int ATM_VF_CLOSE ;
 int ATM_VF_HASQOS ;
 int ATM_VF_REGIS ;
 int ATM_VF_RELEASED ;
 int ATM_VF_WAITING ;
 int DEFINE_WAIT (int ) ;
 int EAFNOSUPPORT ;
 int EALREADY ;
 int EBADFD ;
 int EINPROGRESS ;
 int EINTR ;
 int EINVAL ;
 int EISCONN ;
 int EUNATCH ;
 int O_NONBLOCK ;
 int SELECT_TOP_PCR (TYPE_3__) ;



 int TASK_INTERRUPTIBLE ;
 int as_close ;
 int as_connect ;
 int clear_bit (int ,int *) ;
 int current ;
 int finish_wait (int ,int *) ;
 int lock_sock (struct sock*) ;
 int pr_debug (char*,...) ;
 int prepare_to_wait (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 int schedule () ;
 int set_bit (int ,int *) ;
 int sigd ;
 int sigd_enq (struct atm_vcc*,int ,int *,int *,struct sockaddr_atmsvc*) ;
 int signal_pending (int ) ;
 int sk_sleep (struct sock*) ;
 int svc_disconnect (struct atm_vcc*) ;
 int test_bit (int ,int *) ;
 int vcc_connect (struct socket*,int ,int ,int ) ;
 int wait ;

__attribute__((used)) static int svc_connect(struct socket *sock, struct sockaddr *sockaddr,
         int sockaddr_len, int flags)
{
 DEFINE_WAIT(wait);
 struct sock *sk = sock->sk;
 struct sockaddr_atmsvc *addr;
 struct atm_vcc *vcc = ATM_SD(sock);
 int error;

 pr_debug("%p\n", vcc);
 lock_sock(sk);
 if (sockaddr_len != sizeof(struct sockaddr_atmsvc)) {
  error = -EINVAL;
  goto out;
 }

 switch (sock->state) {
 default:
  error = -EINVAL;
  goto out;
 case 130:
  error = -EISCONN;
  goto out;
 case 129:
  if (test_bit(ATM_VF_WAITING, &vcc->flags)) {
   error = -EALREADY;
   goto out;
  }
  sock->state = 128;
  if (sk->sk_err) {
   error = -sk->sk_err;
   goto out;
  }
  break;
 case 128:
  addr = (struct sockaddr_atmsvc *) sockaddr;
  if (addr->sas_family != AF_ATMSVC) {
   error = -EAFNOSUPPORT;
   goto out;
  }
  if (!test_bit(ATM_VF_HASQOS, &vcc->flags)) {
   error = -EBADFD;
   goto out;
  }
  if (vcc->qos.txtp.traffic_class == ATM_ANYCLASS ||
      vcc->qos.rxtp.traffic_class == ATM_ANYCLASS) {
   error = -EINVAL;
   goto out;
  }
  if (!vcc->qos.txtp.traffic_class &&
      !vcc->qos.rxtp.traffic_class) {
   error = -EINVAL;
   goto out;
  }
  vcc->remote = *addr;
  set_bit(ATM_VF_WAITING, &vcc->flags);
  sigd_enq(vcc, as_connect, ((void*)0), ((void*)0), &vcc->remote);
  if (flags & O_NONBLOCK) {
   sock->state = 129;
   error = -EINPROGRESS;
   goto out;
  }
  error = 0;
  prepare_to_wait(sk_sleep(sk), &wait, TASK_INTERRUPTIBLE);
  while (test_bit(ATM_VF_WAITING, &vcc->flags) && sigd) {
   schedule();
   if (!signal_pending(current)) {
    prepare_to_wait(sk_sleep(sk), &wait,
      TASK_INTERRUPTIBLE);
    continue;
   }
   pr_debug("*ABORT*\n");
   sigd_enq(vcc, as_close, ((void*)0), ((void*)0), ((void*)0));
   while (test_bit(ATM_VF_WAITING, &vcc->flags) && sigd) {
    prepare_to_wait(sk_sleep(sk), &wait,
      TASK_INTERRUPTIBLE);
    schedule();
   }
   if (!sk->sk_err)
    while (!test_bit(ATM_VF_RELEASED, &vcc->flags) &&
           sigd) {
     prepare_to_wait(sk_sleep(sk), &wait,
       TASK_INTERRUPTIBLE);
     schedule();
    }
   clear_bit(ATM_VF_REGIS, &vcc->flags);
   clear_bit(ATM_VF_RELEASED, &vcc->flags);
   clear_bit(ATM_VF_CLOSE, &vcc->flags);

   error = -EINTR;
   break;
  }
  finish_wait(sk_sleep(sk), &wait);
  if (error)
   goto out;
  if (!sigd) {
   error = -EUNATCH;
   goto out;
  }
  if (sk->sk_err) {
   error = -sk->sk_err;
   goto out;
  }
 }

 vcc->qos.txtp.max_pcr = SELECT_TOP_PCR(vcc->qos.txtp);
 vcc->qos.txtp.pcr = 0;
 vcc->qos.txtp.min_pcr = 0;

 error = vcc_connect(sock, vcc->itf, vcc->vpi, vcc->vci);
 if (!error)
  sock->state = 130;
 else
  (void)svc_disconnect(vcc);
out:
 release_sock(sk);
 return error;
}
