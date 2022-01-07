
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_sock {long conn_timeout; int peer; scalar_t__ group; } ;
struct socket {struct sock* sk; } ;
struct sockaddr_tipc {scalar_t__ family; scalar_t__ addrtype; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_state; } ;
struct msghdr {int msg_namelen; int msg_flags; struct sockaddr* msg_name; int * member_0; } ;


 scalar_t__ AF_UNSPEC ;
 int EALREADY ;
 int EINPROGRESS ;
 int EINVAL ;
 int EISCONN ;
 int EWOULDBLOCK ;
 int MSG_DONTWAIT ;
 int O_NONBLOCK ;



 scalar_t__ TIPC_SERVICE_RANGE ;
 int __tipc_sendmsg (struct socket*,struct msghdr*,int ) ;
 int lock_sock (struct sock*) ;
 int memcpy (int *,struct sockaddr*,int) ;
 int memset (int *,int ,int) ;
 long msecs_to_jiffies (long) ;
 int release_sock (struct sock*) ;
 struct tipc_sock* tipc_sk (struct sock*) ;
 scalar_t__ tipc_sk_type_connectionless (struct sock*) ;
 int tipc_sockaddr_is_sane (struct sockaddr_tipc*) ;
 int tipc_wait_for_connect (struct socket*,long*) ;

__attribute__((used)) static int tipc_connect(struct socket *sock, struct sockaddr *dest,
   int destlen, int flags)
{
 struct sock *sk = sock->sk;
 struct tipc_sock *tsk = tipc_sk(sk);
 struct sockaddr_tipc *dst = (struct sockaddr_tipc *)dest;
 struct msghdr m = {((void*)0),};
 long timeout = (flags & O_NONBLOCK) ? 0 : tsk->conn_timeout;
 int previous;
 int res = 0;

 if (destlen != sizeof(struct sockaddr_tipc))
  return -EINVAL;

 lock_sock(sk);

 if (tsk->group) {
  res = -EINVAL;
  goto exit;
 }

 if (dst->family == AF_UNSPEC) {
  memset(&tsk->peer, 0, sizeof(struct sockaddr_tipc));
  if (!tipc_sk_type_connectionless(sk))
   res = -EINVAL;
  goto exit;
 }
 if (!tipc_sockaddr_is_sane(dst)) {
  res = -EINVAL;
  goto exit;
 }

 if (tipc_sk_type_connectionless(sk)) {
  memcpy(&tsk->peer, dest, destlen);
  goto exit;
 } else if (dst->addrtype == TIPC_SERVICE_RANGE) {
  res = -EINVAL;
  goto exit;
 }

 previous = sk->sk_state;

 switch (sk->sk_state) {
 case 128:

  m.msg_name = dest;
  m.msg_namelen = destlen;




  if (!timeout)
   m.msg_flags = MSG_DONTWAIT;

  res = __tipc_sendmsg(sock, &m, 0);
  if ((res < 0) && (res != -EWOULDBLOCK))
   goto exit;





  res = -EINPROGRESS;

 case 130:
  if (!timeout) {
   if (previous == 130)
    res = -EALREADY;
   goto exit;
  }
  timeout = msecs_to_jiffies(timeout);

  res = tipc_wait_for_connect(sock, &timeout);
  break;
 case 129:
  res = -EISCONN;
  break;
 default:
  res = -EINVAL;
 }

exit:
 release_sock(sk);
 return res;
}
