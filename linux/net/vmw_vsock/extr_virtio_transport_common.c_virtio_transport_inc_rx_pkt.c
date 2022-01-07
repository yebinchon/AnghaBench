
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_vsock_sock {scalar_t__ rx_bytes; scalar_t__ buf_alloc; } ;
struct virtio_vsock_pkt {scalar_t__ len; } ;



__attribute__((used)) static bool virtio_transport_inc_rx_pkt(struct virtio_vsock_sock *vvs,
     struct virtio_vsock_pkt *pkt)
{
 if (vvs->rx_bytes + pkt->len > vvs->buf_alloc)
  return 0;

 vvs->rx_bytes += pkt->len;
 return 1;
}
