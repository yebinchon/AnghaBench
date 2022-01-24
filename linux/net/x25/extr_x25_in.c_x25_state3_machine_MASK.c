#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int winsize_in; } ;
struct x25_sock {int condition; int vr; int vl; void* state; int /*<<< orphan*/  interrupt_in_queue; int /*<<< orphan*/  flags; TYPE_2__ facilities; int /*<<< orphan*/  va; int /*<<< orphan*/  vs; TYPE_1__* neighbour; } ;
struct sock {int sk_rcvbuf; int /*<<< orphan*/  sk_rmem_alloc; } ;
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct TYPE_3__ {scalar_t__ extended; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_URGINLINE ; 
 int const X25_CLEAR_CONFIRMATION ; 
#define  X25_CLEAR_REQUEST 134 
 int X25_COND_ACK_PENDING ; 
 int X25_COND_OWN_RX_BUSY ; 
 int X25_COND_PEER_RX_BUSY ; 
#define  X25_DATA 133 
 int X25_EMODULUS ; 
#define  X25_INTERRUPT 132 
#define  X25_INTERRUPT_CONFIRMATION 131 
 int /*<<< orphan*/  X25_INTERRUPT_FLAG ; 
 int const X25_RESET_CONFIRMATION ; 
#define  X25_RESET_REQUEST 130 
#define  X25_RNR 129 
#define  X25_RR 128 
 int X25_SMODULUS ; 
 void* X25_STATE_2 ; 
 void* X25_STATE_4 ; 
 int /*<<< orphan*/  X25_STD_MIN_LEN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 struct x25_sock* FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*,int const) ; 

__attribute__((used)) static int FUNC22(struct sock *sk, struct sk_buff *skb, int frametype, int ns, int nr, int q, int d, int m)
{
	int queued = 0;
	int modulus;
	struct x25_sock *x25 = FUNC15(sk);

	modulus = (x25->neighbour->extended) ? X25_EMODULUS : X25_SMODULUS;

	switch (frametype) {

		case X25_RESET_REQUEST:
			FUNC21(sk, X25_RESET_CONFIRMATION);
			FUNC19(sk);
			x25->condition = 0x00;
			x25->vs        = 0;
			x25->vr        = 0;
			x25->va        = 0;
			x25->vl        = 0;
			FUNC14(sk);
			break;

		case X25_CLEAR_REQUEST:
			if (!FUNC3(skb, X25_STD_MIN_LEN + 2))
				goto out_clear;

			FUNC21(sk, X25_CLEAR_CONFIRMATION);
			FUNC10(sk, 0, skb->data[3], skb->data[4]);
			break;

		case X25_RR:
		case X25_RNR:
			if (!FUNC20(sk, nr)) {
				FUNC9(sk);
				FUNC21(sk, X25_RESET_REQUEST);
				FUNC16(sk);
				x25->condition = 0x00;
				x25->vs        = 0;
				x25->vr        = 0;
				x25->va        = 0;
				x25->vl        = 0;
				x25->state     = X25_STATE_4;
			} else {
				FUNC12(sk, nr);
				if (frametype == X25_RNR) {
					x25->condition |= X25_COND_PEER_RX_BUSY;
				} else {
					x25->condition &= ~X25_COND_PEER_RX_BUSY;
				}
			}
			break;

		case X25_DATA:	/* XXX */
			x25->condition &= ~X25_COND_PEER_RX_BUSY;
			if ((ns != x25->vr) || !FUNC20(sk, nr)) {
				FUNC9(sk);
				FUNC21(sk, X25_RESET_REQUEST);
				FUNC16(sk);
				x25->condition = 0x00;
				x25->vs        = 0;
				x25->vr        = 0;
				x25->va        = 0;
				x25->vl        = 0;
				x25->state     = X25_STATE_4;
				break;
			}
			FUNC12(sk, nr);
			if (ns == x25->vr) {
				if (FUNC13(sk, skb, m) == 0) {
					x25->vr = (x25->vr + 1) % modulus;
					queued = 1;
				} else {
					/* Should never happen */
					FUNC9(sk);
					FUNC21(sk, X25_RESET_REQUEST);
					FUNC16(sk);
					x25->condition = 0x00;
					x25->vs        = 0;
					x25->vr        = 0;
					x25->va        = 0;
					x25->vl        = 0;
					x25->state     = X25_STATE_4;
					break;
				}
				if (FUNC0(&sk->sk_rmem_alloc) >
				    (sk->sk_rcvbuf >> 1))
					x25->condition |= X25_COND_OWN_RX_BUSY;
			}
			/*
			 *	If the window is full Ack it immediately, else
			 *	start the holdback timer.
			 */
			if (((x25->vl + x25->facilities.winsize_in) % modulus) == x25->vr) {
				x25->condition &= ~X25_COND_ACK_PENDING;
				FUNC19(sk);
				FUNC11(sk);
			} else {
				x25->condition |= X25_COND_ACK_PENDING;
				FUNC18(sk);
			}
			break;

		case X25_INTERRUPT_CONFIRMATION:
			FUNC1(X25_INTERRUPT_FLAG, &x25->flags);
			break;

		case X25_INTERRUPT:
			if (FUNC7(sk, SOCK_URGINLINE))
				queued = !FUNC8(sk, skb);
			else {
				FUNC6(skb, sk);
				FUNC5(&x25->interrupt_in_queue, skb);
				queued = 1;
			}
			FUNC4(sk);
			FUNC21(sk, X25_INTERRUPT_CONFIRMATION);
			break;

		default:
			FUNC2("unknown %02X in state 3\n", frametype);
			break;
	}

	return queued;

out_clear:
	FUNC21(sk, X25_CLEAR_REQUEST);
	x25->state = X25_STATE_2;
	FUNC17(sk);
	return 0;
}