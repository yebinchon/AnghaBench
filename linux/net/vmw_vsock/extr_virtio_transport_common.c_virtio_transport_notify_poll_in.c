
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int dummy; } ;


 scalar_t__ vsock_stream_has_data (struct vsock_sock*) ;

int
virtio_transport_notify_poll_in(struct vsock_sock *vsk,
    size_t target,
    bool *data_ready_now)
{
 if (vsock_stream_has_data(vsk))
  *data_ready_now = 1;
 else
  *data_ready_now = 0;

 return 0;
}
