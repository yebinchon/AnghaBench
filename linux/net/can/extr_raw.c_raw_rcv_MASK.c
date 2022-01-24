#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_can {int /*<<< orphan*/  can_ifindex; int /*<<< orphan*/  can_family; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; struct sock* sk; TYPE_1__* dev; scalar_t__ cb; } ;
struct raw_sock {int count; scalar_t__ join_filters; TYPE_3__* uniq; int /*<<< orphan*/  fd_frames; int /*<<< orphan*/  recv_own_msgs; } ;
struct TYPE_8__ {scalar_t__ skbcnt; } ;
struct TYPE_7__ {int /*<<< orphan*/  join_rx_count; } ;
struct TYPE_6__ {scalar_t__ skbcnt; int join_rx_count; struct sk_buff* skb; } ;
struct TYPE_5__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_CAN ; 
 scalar_t__ CAN_MTU ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned int MSG_CONFIRM ; 
 unsigned int MSG_DONTROUTE ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_can*,int /*<<< orphan*/ ,int) ; 
 unsigned int* FUNC3 (struct sk_buff*) ; 
 struct raw_sock* FUNC4 (struct sock*) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC10(struct sk_buff *oskb, void *data)
{
	struct sock *sk = (struct sock *)data;
	struct raw_sock *ro = FUNC4(sk);
	struct sockaddr_can *addr;
	struct sk_buff *skb;
	unsigned int *pflags;

	/* check the received tx sock reference */
	if (!ro->recv_own_msgs && oskb->sk == sk)
		return;

	/* do not pass non-CAN2.0 frames to a legacy socket */
	if (!ro->fd_frames && oskb->len != CAN_MTU)
		return;

	/* eliminate multiple filter matches for the same skb */
	if (FUNC9(ro->uniq)->skb == oskb &&
	    FUNC9(ro->uniq)->skbcnt == FUNC0(oskb)->skbcnt) {
		if (ro->join_filters) {
			FUNC8(ro->uniq->join_rx_count);
			/* drop frame until all enabled filters matched */
			if (FUNC9(ro->uniq)->join_rx_count < ro->count)
				return;
		} else {
			return;
		}
	} else {
		FUNC9(ro->uniq)->skb = oskb;
		FUNC9(ro->uniq)->skbcnt = FUNC0(oskb)->skbcnt;
		FUNC9(ro->uniq)->join_rx_count = 1;
		/* drop first frame to check all enabled filters? */
		if (ro->join_filters && ro->count > 1)
			return;
	}

	/* clone the given skb to be able to enqueue it into the rcv queue */
	skb = FUNC5(oskb, GFP_ATOMIC);
	if (!skb)
		return;

	/*  Put the datagram to the queue so that raw_recvmsg() can
	 *  get it from there.  We need to pass the interface index to
	 *  raw_recvmsg().  We pass a whole struct sockaddr_can in skb->cb
	 *  containing the interface index.
	 */

	FUNC7(sizeof(struct sockaddr_can));
	addr = (struct sockaddr_can *)skb->cb;
	FUNC2(addr, 0, sizeof(*addr));
	addr->can_family  = AF_CAN;
	addr->can_ifindex = skb->dev->ifindex;

	/* add CAN specific message flags for raw_recvmsg() */
	pflags = FUNC3(skb);
	*pflags = 0;
	if (oskb->sk)
		*pflags |= MSG_DONTROUTE;
	if (oskb->sk == sk)
		*pflags |= MSG_CONFIRM;

	if (FUNC6(sk, skb) < 0)
		FUNC1(skb);
}