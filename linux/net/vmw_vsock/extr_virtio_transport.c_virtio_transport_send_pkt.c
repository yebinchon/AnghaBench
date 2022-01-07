
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dst_cid; } ;
struct virtio_vsock_pkt {int len; int list; scalar_t__ reply; TYPE_1__ hdr; } ;
struct virtio_vsock {scalar_t__ guest_cid; int send_pkt_work; int send_pkt_list_lock; int send_pkt_list; int queued_replies; } ;


 int ENODEV ;
 int atomic_inc (int *) ;
 scalar_t__ le64_to_cpu (int ) ;
 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 struct virtio_vsock* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int the_virtio_vsock ;
 int virtio_transport_free_pkt (struct virtio_vsock_pkt*) ;
 int virtio_transport_send_pkt_loopback (struct virtio_vsock*,struct virtio_vsock_pkt*) ;
 int virtio_vsock_workqueue ;

__attribute__((used)) static int
virtio_transport_send_pkt(struct virtio_vsock_pkt *pkt)
{
 struct virtio_vsock *vsock;
 int len = pkt->len;

 rcu_read_lock();
 vsock = rcu_dereference(the_virtio_vsock);
 if (!vsock) {
  virtio_transport_free_pkt(pkt);
  len = -ENODEV;
  goto out_rcu;
 }

 if (le64_to_cpu(pkt->hdr.dst_cid) == vsock->guest_cid) {
  len = virtio_transport_send_pkt_loopback(vsock, pkt);
  goto out_rcu;
 }

 if (pkt->reply)
  atomic_inc(&vsock->queued_replies);

 spin_lock_bh(&vsock->send_pkt_list_lock);
 list_add_tail(&pkt->list, &vsock->send_pkt_list);
 spin_unlock_bh(&vsock->send_pkt_list_lock);

 queue_work(virtio_vsock_workqueue, &vsock->send_pkt_work);

out_rcu:
 rcu_read_unlock();
 return len;
}
