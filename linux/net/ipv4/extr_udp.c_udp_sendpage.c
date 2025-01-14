
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct udp_sock {size_t len; scalar_t__ corkflag; int pending; } ;
struct sock {int sk_socket; } ;
struct page {int dummy; } ;
struct msghdr {int msg_flags; } ;
struct TYPE_4__ {int ip4; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
struct TYPE_6__ {TYPE_2__ fl; } ;
struct inet_sock {TYPE_3__ cork; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int MSG_MORE ;
 int MSG_SENDPAGE_NOTLAST ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ip_append_page (struct sock*,int *,struct page*,int,size_t,int) ;
 int lock_sock (struct sock*) ;
 int net_dbg_ratelimited (char*) ;
 int release_sock (struct sock*) ;
 int sock_no_sendpage (int ,struct page*,int,size_t,int) ;
 int udp_flush_pending_frames (struct sock*) ;
 int udp_push_pending_frames (struct sock*) ;
 int udp_sendmsg (struct sock*,struct msghdr*,int ) ;
 struct udp_sock* udp_sk (struct sock*) ;
 scalar_t__ unlikely (int) ;

int udp_sendpage(struct sock *sk, struct page *page, int offset,
   size_t size, int flags)
{
 struct inet_sock *inet = inet_sk(sk);
 struct udp_sock *up = udp_sk(sk);
 int ret;

 if (flags & MSG_SENDPAGE_NOTLAST)
  flags |= MSG_MORE;

 if (!up->pending) {
  struct msghdr msg = { .msg_flags = flags|MSG_MORE };





  ret = udp_sendmsg(sk, &msg, 0);
  if (ret < 0)
   return ret;
 }

 lock_sock(sk);

 if (unlikely(!up->pending)) {
  release_sock(sk);

  net_dbg_ratelimited("cork failed\n");
  return -EINVAL;
 }

 ret = ip_append_page(sk, &inet->cork.fl.u.ip4,
        page, offset, size, flags);
 if (ret == -EOPNOTSUPP) {
  release_sock(sk);
  return sock_no_sendpage(sk->sk_socket, page, offset,
     size, flags);
 }
 if (ret < 0) {
  udp_flush_pending_frames(sk);
  goto out;
 }

 up->len += size;
 if (!(up->corkflag || (flags&MSG_MORE)))
  ret = udp_push_pending_frames(sk);
 if (!ret)
  ret = size;
out:
 release_sock(sk);
 return ret;
}
