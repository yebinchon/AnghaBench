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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_errors; } ;
struct l2tp_session {scalar_t__ magic; TYPE_1__ stats; int /*<<< orphan*/  reorder_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ L2TP_SESSION_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct l2tp_session *session)
{
	struct sk_buff *skb = NULL;
	FUNC0(!session);
	FUNC0(session->magic != L2TP_SESSION_MAGIC);
	while ((skb = FUNC3(&session->reorder_q))) {
		FUNC1(&session->stats.rx_errors);
		FUNC2(skb);
	}
	return 0;
}