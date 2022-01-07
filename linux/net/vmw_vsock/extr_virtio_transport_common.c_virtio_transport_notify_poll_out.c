
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int dummy; } ;
typedef scalar_t__ s64 ;


 scalar_t__ vsock_stream_has_space (struct vsock_sock*) ;

int
virtio_transport_notify_poll_out(struct vsock_sock *vsk,
     size_t target,
     bool *space_avail_now)
{
 s64 free_space;

 free_space = vsock_stream_has_space(vsk);
 if (free_space > 0)
  *space_avail_now = 1;
 else if (free_space == 0)
  *space_avail_now = 0;

 return 0;
}
