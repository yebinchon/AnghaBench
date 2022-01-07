
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unix_sock {int iolock; int peer_wait; } ;
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_type; int sk_shutdown; } ;
struct sk_buff {int len; int sk; } ;
struct scm_cookie {int fp; } ;
struct msghdr {int msg_flags; scalar_t__ msg_name; } ;
typedef int scm ;
struct TYPE_2__ {scalar_t__ fp; int gid; int uid; int pid; } ;


 int EAGAIN ;
 int EOPNOTSUPP ;
 int EPOLLOUT ;
 int EPOLLWRBAND ;
 int EPOLLWRNORM ;
 int MSG_DONTWAIT ;
 int MSG_OOB ;
 int MSG_PEEK ;
 int MSG_TRUNC ;
 int RCV_SHUTDOWN ;
 int SOCK_RCVTSTAMP ;
 scalar_t__ SOCK_SEQPACKET ;
 TYPE_1__ UNIXCB (struct sk_buff*) ;
 struct sk_buff* __skb_try_recv_datagram (struct sock*,int,int *,int*,int*,struct sk_buff**) ;
 int __skb_wait_for_more_packets (struct sock*,int*,long*,struct sk_buff*) ;
 int __sock_recv_timestamp (struct msghdr*,struct sock*,struct sk_buff*) ;
 int memset (struct scm_cookie*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scm_fp_dup (scalar_t__) ;
 int scm_recv (struct socket*,struct msghdr*,struct scm_cookie*,int) ;
 int scm_set_cred (struct scm_cookie*,int ,int ,int ) ;
 int sk_peek_offset (struct sock*,int) ;
 int sk_peek_offset_bwd (struct sock*,int) ;
 int sk_peek_offset_fwd (struct sock*,size_t) ;
 int skb_copy_datagram_msg (struct sk_buff*,int,struct msghdr*,size_t) ;
 int skb_free_datagram (struct sock*,struct sk_buff*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 long sock_rcvtimeo (struct sock*,int) ;
 int unix_copy_addr (struct msghdr*,int ) ;
 int unix_detach_fds (struct scm_cookie*,struct sk_buff*) ;
 int unix_set_secdata (struct scm_cookie*,struct sk_buff*) ;
 struct unix_sock* unix_sk (struct sock*) ;
 int unix_state_lock (struct sock*) ;
 int unix_state_unlock (struct sock*) ;
 int wake_up_interruptible_sync_poll (int *,int) ;
 scalar_t__ wq_has_sleeper (int *) ;

__attribute__((used)) static int unix_dgram_recvmsg(struct socket *sock, struct msghdr *msg,
         size_t size, int flags)
{
 struct scm_cookie scm;
 struct sock *sk = sock->sk;
 struct unix_sock *u = unix_sk(sk);
 struct sk_buff *skb, *last;
 long timeo;
 int skip;
 int err;

 err = -EOPNOTSUPP;
 if (flags&MSG_OOB)
  goto out;

 timeo = sock_rcvtimeo(sk, flags & MSG_DONTWAIT);

 do {
  mutex_lock(&u->iolock);

  skip = sk_peek_offset(sk, flags);
  skb = __skb_try_recv_datagram(sk, flags, ((void*)0), &skip, &err,
           &last);
  if (skb)
   break;

  mutex_unlock(&u->iolock);

  if (err != -EAGAIN)
   break;
 } while (timeo &&
   !__skb_wait_for_more_packets(sk, &err, &timeo, last));

 if (!skb) {
  unix_state_lock(sk);

  if (sk->sk_type == SOCK_SEQPACKET && err == -EAGAIN &&
      (sk->sk_shutdown & RCV_SHUTDOWN))
   err = 0;
  unix_state_unlock(sk);
  goto out;
 }

 if (wq_has_sleeper(&u->peer_wait))
  wake_up_interruptible_sync_poll(&u->peer_wait,
      EPOLLOUT | EPOLLWRNORM |
      EPOLLWRBAND);

 if (msg->msg_name)
  unix_copy_addr(msg, skb->sk);

 if (size > skb->len - skip)
  size = skb->len - skip;
 else if (size < skb->len - skip)
  msg->msg_flags |= MSG_TRUNC;

 err = skb_copy_datagram_msg(skb, skip, msg, size);
 if (err)
  goto out_free;

 if (sock_flag(sk, SOCK_RCVTSTAMP))
  __sock_recv_timestamp(msg, sk, skb);

 memset(&scm, 0, sizeof(scm));

 scm_set_cred(&scm, UNIXCB(skb).pid, UNIXCB(skb).uid, UNIXCB(skb).gid);
 unix_set_secdata(&scm, skb);

 if (!(flags & MSG_PEEK)) {
  if (UNIXCB(skb).fp)
   unix_detach_fds(&scm, skb);

  sk_peek_offset_bwd(sk, skb->len);
 } else {
  sk_peek_offset_fwd(sk, size);

  if (UNIXCB(skb).fp)
   scm.fp = scm_fp_dup(UNIXCB(skb).fp);
 }
 err = (flags & MSG_TRUNC) ? skb->len - skip : size;

 scm_recv(sock, msg, &scm, flags);

out_free:
 skb_free_datagram(sk, skb);
 mutex_unlock(&u->iolock);
out:
 return err;
}
