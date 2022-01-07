
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_receive_queue; } ;
struct sk_psock {int dummy; } ;
struct msghdr {int dummy; } ;


 int EAGAIN ;
 int MSG_ERRQUEUE ;
 int __tcp_bpf_recvmsg (struct sock*,struct sk_psock*,struct msghdr*,size_t,int) ;
 int inet_recv_error (struct sock*,struct msghdr*,size_t,int*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 struct sk_psock* sk_psock_get (struct sock*) ;
 int sk_psock_put (struct sock*,struct sk_psock*) ;
 scalar_t__ skb_queue_empty (int *) ;
 long sock_rcvtimeo (struct sock*,int) ;
 int tcp_bpf_wait_data (struct sock*,struct sk_psock*,int,long,int*) ;
 int tcp_recvmsg (struct sock*,struct msghdr*,size_t,int,int,int*) ;
 scalar_t__ unlikely (int) ;

int tcp_bpf_recvmsg(struct sock *sk, struct msghdr *msg, size_t len,
      int nonblock, int flags, int *addr_len)
{
 struct sk_psock *psock;
 int copied, ret;

 if (unlikely(flags & MSG_ERRQUEUE))
  return inet_recv_error(sk, msg, len, addr_len);
 if (!skb_queue_empty(&sk->sk_receive_queue))
  return tcp_recvmsg(sk, msg, len, nonblock, flags, addr_len);

 psock = sk_psock_get(sk);
 if (unlikely(!psock))
  return tcp_recvmsg(sk, msg, len, nonblock, flags, addr_len);
 lock_sock(sk);
msg_bytes_ready:
 copied = __tcp_bpf_recvmsg(sk, psock, msg, len, flags);
 if (!copied) {
  int data, err = 0;
  long timeo;

  timeo = sock_rcvtimeo(sk, nonblock);
  data = tcp_bpf_wait_data(sk, psock, flags, timeo, &err);
  if (data) {
   if (skb_queue_empty(&sk->sk_receive_queue))
    goto msg_bytes_ready;
   release_sock(sk);
   sk_psock_put(sk, psock);
   return tcp_recvmsg(sk, msg, len, nonblock, flags, addr_len);
  }
  if (err) {
   ret = err;
   goto out;
  }
  copied = -EAGAIN;
 }
 ret = copied;
out:
 release_sock(sk);
 sk_psock_put(sk, psock);
 return ret;
}
