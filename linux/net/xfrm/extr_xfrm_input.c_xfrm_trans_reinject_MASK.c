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
struct xfrm_trans_tasklet {int /*<<< orphan*/  queue; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* finish ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sk_buff*) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(unsigned long data)
{
	struct xfrm_trans_tasklet *trans = (void *)data;
	struct sk_buff_head queue;
	struct sk_buff *skb;

	FUNC2(&queue);
	FUNC4(&trans->queue, &queue);

	while ((skb = FUNC1(&queue)))
		FUNC0(skb)->finish(FUNC3(skb->dev), NULL, skb);
}