
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_vsock_sock {int rx_lock; int buf_alloc; int fwd_cnt; int last_fwd_cnt; } ;
struct TYPE_2__ {void* buf_alloc; void* fwd_cnt; } ;
struct virtio_vsock_pkt {TYPE_1__ hdr; } ;


 void* cpu_to_le32 (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void virtio_transport_inc_tx_pkt(struct virtio_vsock_sock *vvs, struct virtio_vsock_pkt *pkt)
{
 spin_lock_bh(&vvs->rx_lock);
 vvs->last_fwd_cnt = vvs->fwd_cnt;
 pkt->hdr.fwd_cnt = cpu_to_le32(vvs->fwd_cnt);
 pkt->hdr.buf_alloc = cpu_to_le32(vvs->buf_alloc);
 spin_unlock_bh(&vvs->rx_lock);
}
