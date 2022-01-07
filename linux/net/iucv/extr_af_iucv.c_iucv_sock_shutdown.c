
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_state; int sk_shutdown; int (* sk_state_change ) (struct sock*) ;int sk_receive_queue; } ;
struct iucv_sock {scalar_t__ transport; scalar_t__ path; } ;
struct iucv_message {scalar_t__ tag; scalar_t__ class; } ;
struct TYPE_2__ {int (* message_send ) (scalar_t__,struct iucv_message*,int ,int ,void*,int) ;int (* path_quiesce ) (scalar_t__,int *) ;} ;


 int AF_IUCV_FLAG_SHT ;
 scalar_t__ AF_IUCV_TRANS_IUCV ;
 int ECONNRESET ;
 int EINVAL ;
 int ENOTCONN ;



 int IUCV_IPRMDATA ;

 int RCV_SHUTDOWN ;
 int SEND_SHUTDOWN ;
 int SHUTDOWN_MASK ;
 scalar_t__ iprm_shutdown ;
 int iucv_send_ctrl (struct sock*,int ) ;
 struct iucv_sock* iucv_sk (struct sock*) ;
 int lock_sock (struct sock*) ;
 TYPE_1__* pr_iucv ;
 int release_sock (struct sock*) ;
 int skb_queue_purge (int *) ;
 int stub1 (scalar_t__,struct iucv_message*,int ,int ,void*,int) ;
 int stub2 (scalar_t__,int *) ;
 int stub3 (struct sock*) ;

__attribute__((used)) static int iucv_sock_shutdown(struct socket *sock, int how)
{
 struct sock *sk = sock->sk;
 struct iucv_sock *iucv = iucv_sk(sk);
 struct iucv_message txmsg;
 int err = 0;

 how++;

 if ((how & ~SHUTDOWN_MASK) || !how)
  return -EINVAL;

 lock_sock(sk);
 switch (sk->sk_state) {
 case 128:
 case 129:
 case 130:
 case 131:
  err = -ENOTCONN;
  goto fail;
 default:
  break;
 }

 if (how == SEND_SHUTDOWN || how == SHUTDOWN_MASK) {
  if (iucv->transport == AF_IUCV_TRANS_IUCV) {
   txmsg.class = 0;
   txmsg.tag = 0;
   err = pr_iucv->message_send(iucv->path, &txmsg,
    IUCV_IPRMDATA, 0, (void *) iprm_shutdown, 8);
   if (err) {
    switch (err) {
    case 1:
     err = -ENOTCONN;
     break;
    case 2:
     err = -ECONNRESET;
     break;
    default:
     err = -ENOTCONN;
     break;
    }
   }
  } else
   iucv_send_ctrl(sk, AF_IUCV_FLAG_SHT);
 }

 sk->sk_shutdown |= how;
 if (how == RCV_SHUTDOWN || how == SHUTDOWN_MASK) {
  if ((iucv->transport == AF_IUCV_TRANS_IUCV) &&
      iucv->path) {
   err = pr_iucv->path_quiesce(iucv->path, ((void*)0));
   if (err)
    err = -ENOTCONN;

  }
  skb_queue_purge(&sk->sk_receive_queue);
 }


 sk->sk_state_change(sk);

fail:
 release_sock(sk);
 return err;
}
