
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct vsock_sock {struct virtio_vsock_sock* trans; } ;
struct virtio_vsock_sock {scalar_t__ buf_size; scalar_t__ buf_size_max; } ;


 scalar_t__ VIRTIO_VSOCK_MAX_BUF_SIZE ;

void virtio_transport_set_max_buffer_size(struct vsock_sock *vsk, u64 val)
{
 struct virtio_vsock_sock *vvs = vsk->trans;

 if (val > VIRTIO_VSOCK_MAX_BUF_SIZE)
  val = VIRTIO_VSOCK_MAX_BUF_SIZE;
 if (val < vvs->buf_size)
  vvs->buf_size = val;
 vvs->buf_size_max = val;
}
