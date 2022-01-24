#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_rcvbuf; } ;
struct sk_buff {int dummy; } ;
struct sctp_transport {int dummy; } ;
struct sctp_inq {int dummy; } ;
struct sctp_ep_common {scalar_t__ type; struct sock* sk; scalar_t__ dead; struct sctp_inq inqueue; } ;
struct sctp_chunk {struct sctp_ep_common* rcvr; struct sctp_transport* transport; } ;
struct TYPE_2__ {struct sctp_chunk* chunk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCTP_EP_TYPE_ASSOCIATION ; 
 scalar_t__ SCTP_EP_TYPE_SOCKET ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_ep_common*) ; 
 int /*<<< orphan*/  FUNC10 (struct sctp_inq*,struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sctp_transport*) ; 
 scalar_t__ FUNC13 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct sock*) ; 
 scalar_t__ FUNC15 (int) ; 

int FUNC16(struct sock *sk, struct sk_buff *skb)
{
	struct sctp_chunk *chunk = FUNC2(skb)->chunk;
	struct sctp_inq *inqueue = &chunk->rcvr->inqueue;
	struct sctp_transport *t = chunk->transport;
	struct sctp_ep_common *rcvr = NULL;
	int backloged = 0;

	rcvr = chunk->rcvr;

	/* If the rcvr is dead then the association or endpoint
	 * has been deleted and we can safely drop the chunk
	 * and refs that we are holding.
	 */
	if (rcvr->dead) {
		FUNC7(chunk);
		goto done;
	}

	if (FUNC15(rcvr->sk != sk)) {
		/* In this case, the association moved from one socket to
		 * another.  We are currently sitting on the backlog of the
		 * old socket, so we need to move.
		 * However, since we are here in the process context we
		 * need to take make sure that the user doesn't own
		 * the new socket when we process the packet.
		 * If the new socket is user-owned, queue the chunk to the
		 * backlog of the new socket without dropping any refs.
		 * Otherwise, we can safely push the chunk on the inqueue.
		 */

		sk = rcvr->sk;
		FUNC5();
		FUNC3(sk);

		if (FUNC14(sk) || !FUNC11(sk)) {
			if (FUNC13(sk, skb, FUNC1(sk->sk_rcvbuf)))
				FUNC7(chunk);
			else
				backloged = 1;
		} else
			FUNC10(inqueue, chunk);

		FUNC4(sk);
		FUNC6();

		/* If the chunk was backloged again, don't drop refs */
		if (backloged)
			return 0;
	} else {
		if (!FUNC11(sk)) {
			if (!FUNC13(sk, skb, FUNC1(sk->sk_rcvbuf)))
				return 0;
			FUNC7(chunk);
		} else {
			FUNC10(inqueue, chunk);
		}
	}

done:
	/* Release the refs we took in sctp_add_backlog */
	if (SCTP_EP_TYPE_ASSOCIATION == rcvr->type)
		FUNC12(t);
	else if (SCTP_EP_TYPE_SOCKET == rcvr->type)
		FUNC8(FUNC9(rcvr));
	else
		FUNC0();

	return 0;
}