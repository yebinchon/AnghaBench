
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vsock_sock {struct virtio_vsock_sock* trans; } ;
struct virtio_vsock_sock {int buf_size; } ;



u64 virtio_transport_stream_rcvhiwat(struct vsock_sock *vsk)
{
 struct virtio_vsock_sock *vvs = vsk->trans;

 return vvs->buf_size;
}
