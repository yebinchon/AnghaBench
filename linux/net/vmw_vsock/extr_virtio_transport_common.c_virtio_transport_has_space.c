
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {struct virtio_vsock_sock* trans; } ;
struct virtio_vsock_sock {scalar_t__ peer_buf_alloc; scalar_t__ tx_cnt; scalar_t__ peer_fwd_cnt; } ;
typedef scalar_t__ s64 ;



__attribute__((used)) static s64 virtio_transport_has_space(struct vsock_sock *vsk)
{
 struct virtio_vsock_sock *vvs = vsk->trans;
 s64 bytes;

 bytes = vvs->peer_buf_alloc - (vvs->tx_cnt - vvs->peer_fwd_cnt);
 if (bytes < 0)
  bytes = 0;

 return bytes;
}
