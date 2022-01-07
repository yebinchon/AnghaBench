
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsock_sock {struct virtio_vsock_sock* trans; } ;
struct virtio_vsock_sock {int tx_lock; void* peer_fwd_cnt; void* peer_buf_alloc; } ;
struct TYPE_2__ {int fwd_cnt; int buf_alloc; } ;
struct virtio_vsock_pkt {TYPE_1__ hdr; } ;
struct sock {int dummy; } ;


 void* le32_to_cpu (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int virtio_transport_has_space (struct vsock_sock*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static bool virtio_transport_space_update(struct sock *sk,
       struct virtio_vsock_pkt *pkt)
{
 struct vsock_sock *vsk = vsock_sk(sk);
 struct virtio_vsock_sock *vvs = vsk->trans;
 bool space_available;


 spin_lock_bh(&vvs->tx_lock);
 vvs->peer_buf_alloc = le32_to_cpu(pkt->hdr.buf_alloc);
 vvs->peer_fwd_cnt = le32_to_cpu(pkt->hdr.fwd_cnt);
 space_available = virtio_transport_has_space(vsk);
 spin_unlock_bh(&vvs->tx_lock);
 return space_available;
}
