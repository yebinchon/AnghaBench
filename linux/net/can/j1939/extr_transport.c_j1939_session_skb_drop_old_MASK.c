#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {unsigned int len; } ;
struct j1939_sk_buff_cb {unsigned int offset; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int tx_acked; } ;
struct j1939_session {TYPE_2__ skb_queue; TYPE_1__ pkt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,TYPE_2__*) ; 
 struct j1939_sk_buff_cb* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct j1939_session *session)
{
	struct sk_buff *do_skb;
	struct j1939_sk_buff_cb *do_skcb;
	unsigned int offset_start;
	unsigned long flags;

	if (FUNC4(&session->skb_queue) < 2)
		return;

	offset_start = session->pkt.tx_acked * 7;

	FUNC5(&session->skb_queue.lock, flags);
	do_skb = FUNC3(&session->skb_queue);
	do_skcb = FUNC1(do_skb);

	if ((do_skcb->offset + do_skb->len) < offset_start) {
		FUNC0(do_skb, &session->skb_queue);
		FUNC2(do_skb);
	}
	FUNC6(&session->skb_queue.lock, flags);
}