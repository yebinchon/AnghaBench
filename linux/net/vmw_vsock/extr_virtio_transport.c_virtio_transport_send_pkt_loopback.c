
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_vsock_pkt {int len; int list; } ;
struct virtio_vsock {int loopback_work; int loopback_list_lock; int loopback_list; } ;


 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int virtio_vsock_workqueue ;

__attribute__((used)) static int virtio_transport_send_pkt_loopback(struct virtio_vsock *vsock,
           struct virtio_vsock_pkt *pkt)
{
 int len = pkt->len;

 spin_lock_bh(&vsock->loopback_list_lock);
 list_add_tail(&pkt->list, &vsock->loopback_list);
 spin_unlock_bh(&vsock->loopback_list_lock);

 queue_work(virtio_vsock_workqueue, &vsock->loopback_work);

 return len;
}
