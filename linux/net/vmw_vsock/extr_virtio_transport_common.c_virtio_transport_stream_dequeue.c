
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int dummy; } ;
struct msghdr {int dummy; } ;
typedef int ssize_t ;


 int EOPNOTSUPP ;
 int MSG_PEEK ;
 int virtio_transport_stream_do_dequeue (struct vsock_sock*,struct msghdr*,size_t) ;

ssize_t
virtio_transport_stream_dequeue(struct vsock_sock *vsk,
    struct msghdr *msg,
    size_t len, int flags)
{
 if (flags & MSG_PEEK)
  return -EOPNOTSUPP;

 return virtio_transport_stream_do_dequeue(vsk, msg, len);
}
