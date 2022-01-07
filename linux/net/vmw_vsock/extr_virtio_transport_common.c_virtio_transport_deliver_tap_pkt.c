
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_vsock_pkt {int dummy; } ;


 int virtio_transport_build_skb ;
 int vsock_deliver_tap (int ,struct virtio_vsock_pkt*) ;

void virtio_transport_deliver_tap_pkt(struct virtio_vsock_pkt *pkt)
{
 vsock_deliver_tap(virtio_transport_build_skb, pkt);
}
