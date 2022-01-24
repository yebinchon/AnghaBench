#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int dummy; } ;
struct nfc_llcp_sock {scalar_t__ remote_rw; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  tx_pending_queue; scalar_t__ remote_ready; struct nfc_llcp_local* local; } ;
struct nfc_llcp_local {int /*<<< orphan*/  tx_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfc_llcp_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 

int FUNC5(struct nfc_llcp_sock *sock)
{
	int nr_frames = 0;
	struct nfc_llcp_local *local = sock->local;

	FUNC1("Remote ready %d tx queue len %d remote rw %d",
		 sock->remote_ready, FUNC3(&sock->tx_pending_queue),
		 sock->remote_rw);

	/* Try to queue some I frames for transmission */
	while (sock->remote_ready &&
	       FUNC3(&sock->tx_pending_queue) < sock->remote_rw) {
		struct sk_buff *pdu;

		pdu = FUNC2(&sock->tx_queue);
		if (pdu == NULL)
			break;

		/* Update N(S)/N(R) */
		FUNC0(sock, pdu);

		FUNC4(&local->tx_queue, pdu);
		nr_frames++;
	}

	return nr_frames;
}