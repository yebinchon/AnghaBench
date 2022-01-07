
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct virtio_vsock_sock {scalar_t__ peer_buf_alloc; scalar_t__ tx_cnt; scalar_t__ peer_fwd_cnt; int tx_lock; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

u32 virtio_transport_get_credit(struct virtio_vsock_sock *vvs, u32 credit)
{
 u32 ret;

 spin_lock_bh(&vvs->tx_lock);
 ret = vvs->peer_buf_alloc - (vvs->tx_cnt - vvs->peer_fwd_cnt);
 if (ret > credit)
  ret = credit;
 vvs->tx_cnt += ret;
 spin_unlock_bh(&vvs->tx_lock);

 return ret;
}
