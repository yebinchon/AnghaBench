
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_transport_send_notify_data {int dummy; } ;
struct vsock_sock {int dummy; } ;



int virtio_transport_notify_send_init(struct vsock_sock *vsk,
 struct vsock_transport_send_notify_data *data)
{
 return 0;
}
