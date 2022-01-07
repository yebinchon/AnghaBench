
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_transport_recv_notify_data {int dummy; } ;
struct vsock_sock {int dummy; } ;
typedef int ssize_t ;



int virtio_transport_notify_recv_post_dequeue(struct vsock_sock *vsk,
 size_t target, ssize_t copied, bool data_read,
 struct vsock_transport_recv_notify_data *data)
{
 return 0;
}
