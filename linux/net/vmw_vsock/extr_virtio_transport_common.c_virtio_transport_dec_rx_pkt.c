
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_vsock_sock {int fwd_cnt; int rx_bytes; } ;
struct virtio_vsock_pkt {scalar_t__ len; } ;



__attribute__((used)) static void virtio_transport_dec_rx_pkt(struct virtio_vsock_sock *vvs,
     struct virtio_vsock_pkt *pkt)
{
 vvs->rx_bytes -= pkt->len;
 vvs->fwd_cnt += pkt->len;
}
