
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_vsock_pkt {struct virtio_vsock_pkt* buf; } ;


 int kfree (struct virtio_vsock_pkt*) ;

void virtio_transport_free_pkt(struct virtio_vsock_pkt *pkt)
{
 kfree(pkt->buf);
 kfree(pkt);
}
