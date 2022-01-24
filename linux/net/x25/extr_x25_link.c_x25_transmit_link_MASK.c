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
struct x25_neigh {int state; int /*<<< orphan*/  queue; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
#define  X25_LINK_STATE_0 131 
#define  X25_LINK_STATE_1 130 
#define  X25_LINK_STATE_2 129 
#define  X25_LINK_STATE_3 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct x25_neigh*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct x25_neigh*) ; 

void FUNC3(struct sk_buff *skb, struct x25_neigh *nb)
{
	switch (nb->state) {
	case X25_LINK_STATE_0:
		FUNC0(&nb->queue, skb);
		nb->state = X25_LINK_STATE_1;
		FUNC1(nb);
		break;
	case X25_LINK_STATE_1:
	case X25_LINK_STATE_2:
		FUNC0(&nb->queue, skb);
		break;
	case X25_LINK_STATE_3:
		FUNC2(skb, nb);
		break;
	}
}