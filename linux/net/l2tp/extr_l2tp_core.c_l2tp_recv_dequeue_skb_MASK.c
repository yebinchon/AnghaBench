#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct l2tp_tunnel {TYPE_1__ stats; } ;
struct TYPE_5__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct l2tp_session {int /*<<< orphan*/  (* recv_skb ) (struct l2tp_session*,struct sk_buff*,int) ;int /*<<< orphan*/  nr; int /*<<< orphan*/  name; int /*<<< orphan*/  nr_max; TYPE_2__ stats; struct l2tp_tunnel* tunnel; } ;
struct TYPE_6__ {int length; scalar_t__ has_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  L2TP_MSG_SEQ ; 
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct l2tp_session*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2tp_session*,struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC7(struct l2tp_session *session, struct sk_buff *skb)
{
	struct l2tp_tunnel *tunnel = session->tunnel;
	int length = FUNC0(skb)->length;

	/* We're about to requeue the skb, so return resources
	 * to its current owner (a socket receive buffer).
	 */
	FUNC5(skb);

	FUNC2(&tunnel->stats.rx_packets);
	FUNC1(length, &tunnel->stats.rx_bytes);
	FUNC2(&session->stats.rx_packets);
	FUNC1(length, &session->stats.rx_bytes);

	if (FUNC0(skb)->has_seq) {
		/* Bump our Nr */
		session->nr++;
		session->nr &= session->nr_max;

		FUNC4(session, L2TP_MSG_SEQ, "%s: updated nr to %hu\n",
			 session->name, session->nr);
	}

	/* call private receive handler */
	if (session->recv_skb != NULL)
		(*session->recv_skb)(session, skb, FUNC0(skb)->length);
	else
		FUNC3(skb);
}