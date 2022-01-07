
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_transport_recv_notify_data {int dummy; } ;
struct vsock_sock {int dummy; } ;



int virtio_transport_notify_recv_init(struct vsock_sock *vsk,
 size_t target, struct vsock_transport_recv_notify_data *data)
{
 return 0;
}
