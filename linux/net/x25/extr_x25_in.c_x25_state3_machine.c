
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int winsize_in; } ;
struct x25_sock {int condition; int vr; int vl; void* state; int interrupt_in_queue; int flags; TYPE_2__ facilities; int va; int vs; TYPE_1__* neighbour; } ;
struct sock {int sk_rcvbuf; int sk_rmem_alloc; } ;
struct sk_buff {int * data; } ;
struct TYPE_3__ {scalar_t__ extended; } ;


 int SOCK_URGINLINE ;
 int const X25_CLEAR_CONFIRMATION ;

 int X25_COND_ACK_PENDING ;
 int X25_COND_OWN_RX_BUSY ;
 int X25_COND_PEER_RX_BUSY ;

 int X25_EMODULUS ;


 int X25_INTERRUPT_FLAG ;
 int const X25_RESET_CONFIRMATION ;



 int X25_SMODULUS ;
 void* X25_STATE_2 ;
 void* X25_STATE_4 ;
 int X25_STD_MIN_LEN ;
 int atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int pr_warn (char*,int) ;
 int pskb_may_pull (struct sk_buff*,int ) ;
 int sk_send_sigurg (struct sock*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_set_owner_r (struct sk_buff*,struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;
 int x25_clear_queues (struct sock*) ;
 int x25_disconnect (struct sock*,int ,int ,int ) ;
 int x25_enquiry_response (struct sock*) ;
 int x25_frames_acked (struct sock*,int) ;
 int x25_queue_rx_frame (struct sock*,struct sk_buff*,int) ;
 int x25_requeue_frames (struct sock*) ;
 struct x25_sock* x25_sk (struct sock*) ;
 int x25_start_t22timer (struct sock*) ;
 int x25_start_t23timer (struct sock*) ;
 int x25_start_t2timer (struct sock*) ;
 int x25_stop_timer (struct sock*) ;
 int x25_validate_nr (struct sock*,int) ;
 int x25_write_internal (struct sock*,int const) ;

__attribute__((used)) static int x25_state3_machine(struct sock *sk, struct sk_buff *skb, int frametype, int ns, int nr, int q, int d, int m)
{
 int queued = 0;
 int modulus;
 struct x25_sock *x25 = x25_sk(sk);

 modulus = (x25->neighbour->extended) ? X25_EMODULUS : X25_SMODULUS;

 switch (frametype) {

  case 130:
   x25_write_internal(sk, X25_RESET_CONFIRMATION);
   x25_stop_timer(sk);
   x25->condition = 0x00;
   x25->vs = 0;
   x25->vr = 0;
   x25->va = 0;
   x25->vl = 0;
   x25_requeue_frames(sk);
   break;

  case 134:
   if (!pskb_may_pull(skb, X25_STD_MIN_LEN + 2))
    goto out_clear;

   x25_write_internal(sk, X25_CLEAR_CONFIRMATION);
   x25_disconnect(sk, 0, skb->data[3], skb->data[4]);
   break;

  case 128:
  case 129:
   if (!x25_validate_nr(sk, nr)) {
    x25_clear_queues(sk);
    x25_write_internal(sk, 130);
    x25_start_t22timer(sk);
    x25->condition = 0x00;
    x25->vs = 0;
    x25->vr = 0;
    x25->va = 0;
    x25->vl = 0;
    x25->state = X25_STATE_4;
   } else {
    x25_frames_acked(sk, nr);
    if (frametype == 129) {
     x25->condition |= X25_COND_PEER_RX_BUSY;
    } else {
     x25->condition &= ~X25_COND_PEER_RX_BUSY;
    }
   }
   break;

  case 133:
   x25->condition &= ~X25_COND_PEER_RX_BUSY;
   if ((ns != x25->vr) || !x25_validate_nr(sk, nr)) {
    x25_clear_queues(sk);
    x25_write_internal(sk, 130);
    x25_start_t22timer(sk);
    x25->condition = 0x00;
    x25->vs = 0;
    x25->vr = 0;
    x25->va = 0;
    x25->vl = 0;
    x25->state = X25_STATE_4;
    break;
   }
   x25_frames_acked(sk, nr);
   if (ns == x25->vr) {
    if (x25_queue_rx_frame(sk, skb, m) == 0) {
     x25->vr = (x25->vr + 1) % modulus;
     queued = 1;
    } else {

     x25_clear_queues(sk);
     x25_write_internal(sk, 130);
     x25_start_t22timer(sk);
     x25->condition = 0x00;
     x25->vs = 0;
     x25->vr = 0;
     x25->va = 0;
     x25->vl = 0;
     x25->state = X25_STATE_4;
     break;
    }
    if (atomic_read(&sk->sk_rmem_alloc) >
        (sk->sk_rcvbuf >> 1))
     x25->condition |= X25_COND_OWN_RX_BUSY;
   }




   if (((x25->vl + x25->facilities.winsize_in) % modulus) == x25->vr) {
    x25->condition &= ~X25_COND_ACK_PENDING;
    x25_stop_timer(sk);
    x25_enquiry_response(sk);
   } else {
    x25->condition |= X25_COND_ACK_PENDING;
    x25_start_t2timer(sk);
   }
   break;

  case 131:
   clear_bit(X25_INTERRUPT_FLAG, &x25->flags);
   break;

  case 132:
   if (sock_flag(sk, SOCK_URGINLINE))
    queued = !sock_queue_rcv_skb(sk, skb);
   else {
    skb_set_owner_r(skb, sk);
    skb_queue_tail(&x25->interrupt_in_queue, skb);
    queued = 1;
   }
   sk_send_sigurg(sk);
   x25_write_internal(sk, 131);
   break;

  default:
   pr_warn("unknown %02X in state 3\n", frametype);
   break;
 }

 return queued;

out_clear:
 x25_write_internal(sk, 134);
 x25->state = X25_STATE_2;
 x25_start_t23timer(sk);
 return 0;
}
