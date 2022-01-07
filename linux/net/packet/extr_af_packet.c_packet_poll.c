
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct TYPE_6__ {int lock; } ;
struct TYPE_5__ {int lock; } ;
struct sock {TYPE_2__ sk_write_queue; TYPE_1__ sk_receive_queue; } ;
struct TYPE_8__ {scalar_t__ pg_vec; } ;
struct TYPE_7__ {scalar_t__ pg_vec; } ;
struct packet_sock {TYPE_4__ tx_ring; TYPE_3__ rx_ring; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int TP_STATUS_AVAILABLE ;
 int TP_STATUS_KERNEL ;
 int datagram_poll (struct file*,struct socket*,int *) ;
 scalar_t__ packet_current_frame (struct packet_sock*,TYPE_4__*,int ) ;
 int packet_previous_rx_frame (struct packet_sock*,TYPE_3__*,int ) ;
 int packet_rcv_try_clear_pressure (struct packet_sock*) ;
 struct packet_sock* pkt_sk (struct sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static __poll_t packet_poll(struct file *file, struct socket *sock,
    poll_table *wait)
{
 struct sock *sk = sock->sk;
 struct packet_sock *po = pkt_sk(sk);
 __poll_t mask = datagram_poll(file, sock, wait);

 spin_lock_bh(&sk->sk_receive_queue.lock);
 if (po->rx_ring.pg_vec) {
  if (!packet_previous_rx_frame(po, &po->rx_ring,
   TP_STATUS_KERNEL))
   mask |= EPOLLIN | EPOLLRDNORM;
 }
 packet_rcv_try_clear_pressure(po);
 spin_unlock_bh(&sk->sk_receive_queue.lock);
 spin_lock_bh(&sk->sk_write_queue.lock);
 if (po->tx_ring.pg_vec) {
  if (packet_current_frame(po, &po->tx_ring, TP_STATUS_AVAILABLE))
   mask |= EPOLLOUT | EPOLLWRNORM;
 }
 spin_unlock_bh(&sk->sk_write_queue.lock);
 return mask;
}
