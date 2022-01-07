
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct virtio_vsock_sock {int tx_lock; int tx_cnt; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void virtio_transport_put_credit(struct virtio_vsock_sock *vvs, u32 credit)
{
 spin_lock_bh(&vvs->tx_lock);
 vvs->tx_cnt -= credit;
 spin_unlock_bh(&vvs->tx_lock);
}
