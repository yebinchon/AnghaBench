
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vq_callback_t ;
struct virtio_vsock {int tx_run; int rx_run; int event_run; int event_lock; int rx_lock; int tx_lock; int loopback_work; int send_pkt_work; int event_work; int tx_work; int rx_work; int loopback_list; int loopback_list_lock; int send_pkt_list; int send_pkt_list_lock; int queued_replies; scalar_t__ rx_buf_max_nr; scalar_t__ rx_buf_nr; int vqs; struct virtio_device* vdev; } ;
struct virtio_device {struct virtio_vsock* priv; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int VSOCK_VQ_MAX ;
 int atomic_set (int *,int ) ;
 int kfree (struct virtio_vsock*) ;
 struct virtio_vsock* kzalloc (int,int ) ;
 int lockdep_is_held (int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (int ,struct virtio_vsock*) ;
 scalar_t__ rcu_dereference_protected (int ,int ) ;
 int spin_lock_init (int *) ;
 int the_virtio_vsock ;
 int the_virtio_vsock_mutex ;
 int virtio_find_vqs (struct virtio_device*,int ,int ,int **,char const* const*,int *) ;
 int virtio_transport_event_work ;
 int virtio_transport_loopback_work ;
 int virtio_transport_rx_work ;
 int virtio_transport_send_pkt_work ;
 int virtio_transport_tx_work ;
 int * virtio_vsock_event_done ;
 int virtio_vsock_event_fill (struct virtio_vsock*) ;
 int * virtio_vsock_rx_done ;
 int virtio_vsock_rx_fill (struct virtio_vsock*) ;
 int * virtio_vsock_tx_done ;
 int virtio_vsock_update_guest_cid (struct virtio_vsock*) ;

__attribute__((used)) static int virtio_vsock_probe(struct virtio_device *vdev)
{
 vq_callback_t *callbacks[] = {
  virtio_vsock_rx_done,
  virtio_vsock_tx_done,
  virtio_vsock_event_done,
 };
 static const char * const names[] = {
  "rx",
  "tx",
  "event",
 };
 struct virtio_vsock *vsock = ((void*)0);
 int ret;

 ret = mutex_lock_interruptible(&the_virtio_vsock_mutex);
 if (ret)
  return ret;


 if (rcu_dereference_protected(the_virtio_vsock,
    lockdep_is_held(&the_virtio_vsock_mutex))) {
  ret = -EBUSY;
  goto out;
 }

 vsock = kzalloc(sizeof(*vsock), GFP_KERNEL);
 if (!vsock) {
  ret = -ENOMEM;
  goto out;
 }

 vsock->vdev = vdev;

 ret = virtio_find_vqs(vsock->vdev, VSOCK_VQ_MAX,
         vsock->vqs, callbacks, names,
         ((void*)0));
 if (ret < 0)
  goto out;

 virtio_vsock_update_guest_cid(vsock);

 vsock->rx_buf_nr = 0;
 vsock->rx_buf_max_nr = 0;
 atomic_set(&vsock->queued_replies, 0);

 mutex_init(&vsock->tx_lock);
 mutex_init(&vsock->rx_lock);
 mutex_init(&vsock->event_lock);
 spin_lock_init(&vsock->send_pkt_list_lock);
 INIT_LIST_HEAD(&vsock->send_pkt_list);
 spin_lock_init(&vsock->loopback_list_lock);
 INIT_LIST_HEAD(&vsock->loopback_list);
 INIT_WORK(&vsock->rx_work, virtio_transport_rx_work);
 INIT_WORK(&vsock->tx_work, virtio_transport_tx_work);
 INIT_WORK(&vsock->event_work, virtio_transport_event_work);
 INIT_WORK(&vsock->send_pkt_work, virtio_transport_send_pkt_work);
 INIT_WORK(&vsock->loopback_work, virtio_transport_loopback_work);

 mutex_lock(&vsock->tx_lock);
 vsock->tx_run = 1;
 mutex_unlock(&vsock->tx_lock);

 mutex_lock(&vsock->rx_lock);
 virtio_vsock_rx_fill(vsock);
 vsock->rx_run = 1;
 mutex_unlock(&vsock->rx_lock);

 mutex_lock(&vsock->event_lock);
 virtio_vsock_event_fill(vsock);
 vsock->event_run = 1;
 mutex_unlock(&vsock->event_lock);

 vdev->priv = vsock;
 rcu_assign_pointer(the_virtio_vsock, vsock);

 mutex_unlock(&the_virtio_vsock_mutex);
 return 0;

out:
 kfree(vsock);
 mutex_unlock(&the_virtio_vsock_mutex);
 return ret;
}
