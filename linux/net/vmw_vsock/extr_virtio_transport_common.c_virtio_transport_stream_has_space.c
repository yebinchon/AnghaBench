
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {struct virtio_vsock_sock* trans; } ;
struct virtio_vsock_sock {int tx_lock; } ;
typedef int s64 ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int virtio_transport_has_space (struct vsock_sock*) ;

s64 virtio_transport_stream_has_space(struct vsock_sock *vsk)
{
 struct virtio_vsock_sock *vvs = vsk->trans;
 s64 bytes;

 spin_lock_bh(&vvs->tx_lock);
 bytes = virtio_transport_has_space(vsk);
 spin_unlock_bh(&vvs->tx_lock);

 return bytes;
}
