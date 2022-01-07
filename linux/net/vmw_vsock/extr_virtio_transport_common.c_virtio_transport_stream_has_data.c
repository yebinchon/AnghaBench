
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {struct virtio_vsock_sock* trans; } ;
struct virtio_vsock_sock {int rx_lock; int rx_bytes; } ;
typedef int s64 ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

s64 virtio_transport_stream_has_data(struct vsock_sock *vsk)
{
 struct virtio_vsock_sock *vvs = vsk->trans;
 s64 bytes;

 spin_lock_bh(&vvs->rx_lock);
 bytes = vvs->rx_bytes;
 spin_unlock_bh(&vvs->rx_lock);

 return bytes;
}
