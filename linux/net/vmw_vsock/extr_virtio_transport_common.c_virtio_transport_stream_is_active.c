
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int dummy; } ;



bool virtio_transport_stream_is_active(struct vsock_sock *vsk)
{
 return 1;
}
