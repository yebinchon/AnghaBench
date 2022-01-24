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
struct x25_neigh {scalar_t__ state; int /*<<< orphan*/  queue; } ;
struct sk_buff {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
#define  X25_DIAGNOSTIC 130 
 scalar_t__ X25_LINK_STATE_3 ; 
#define  X25_RESTART_CONFIRMATION 129 
#define  X25_RESTART_REQUEST 128 
 int /*<<< orphan*/  X25_STD_MIN_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned short,...) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct x25_neigh*) ; 
 int /*<<< orphan*/  FUNC4 (struct x25_neigh*) ; 
 int /*<<< orphan*/  FUNC5 (struct x25_neigh*) ; 
 int /*<<< orphan*/  FUNC6 (struct x25_neigh*) ; 

void FUNC7(struct sk_buff *skb, struct x25_neigh *nb,
		      unsigned short frametype)
{
	struct sk_buff *skbn;
	int confirm;

	switch (frametype) {
	case X25_RESTART_REQUEST:
		confirm = !FUNC5(nb);
		FUNC4(nb);
		nb->state = X25_LINK_STATE_3;
		if (confirm)
			FUNC6(nb);
		break;

	case X25_RESTART_CONFIRMATION:
		FUNC4(nb);
		nb->state = X25_LINK_STATE_3;
		break;

	case X25_DIAGNOSTIC:
		if (!FUNC1(skb, X25_STD_MIN_LEN + 4))
			break;

		FUNC0("diagnostic #%d - %02X %02X %02X\n",
		       skb->data[3], skb->data[4],
		       skb->data[5], skb->data[6]);
		break;

	default:
		FUNC0("received unknown %02X with LCI 000\n",
		       frametype);
		break;
	}

	if (nb->state == X25_LINK_STATE_3)
		while ((skbn = FUNC2(&nb->queue)) != NULL)
			FUNC3(skbn, nb);
}