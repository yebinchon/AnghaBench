
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {struct virtio_vsock_sock* trans; } ;
struct virtio_vsock_sock {int dummy; } ;


 int kfree (struct virtio_vsock_sock*) ;

void virtio_transport_destruct(struct vsock_sock *vsk)
{
 struct virtio_vsock_sock *vvs = vsk->trans;

 kfree(vvs);
}
