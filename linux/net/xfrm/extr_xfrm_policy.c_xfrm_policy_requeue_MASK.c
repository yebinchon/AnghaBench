#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct xfrm_policy_queue {TYPE_1__ hold_queue; int /*<<< orphan*/  hold_timer; int /*<<< orphan*/  timeout; } ;
struct xfrm_policy {struct xfrm_policy_queue polq; } ;
struct sk_buff_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFRM_QUEUE_TMO_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff_head*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct xfrm_policy*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfrm_policy*) ; 

__attribute__((used)) static void FUNC10(struct xfrm_policy *old,
				struct xfrm_policy *new)
{
	struct xfrm_policy_queue *pq = &old->polq;
	struct sk_buff_head list;

	if (FUNC3(&pq->hold_queue))
		return;

	FUNC0(&list);

	FUNC6(&pq->hold_queue.lock);
	FUNC5(&pq->hold_queue, &list);
	if (FUNC1(&pq->hold_timer))
		FUNC9(old);
	FUNC7(&pq->hold_queue.lock);

	pq = &new->polq;

	FUNC6(&pq->hold_queue.lock);
	FUNC4(&list, &pq->hold_queue);
	pq->timeout = XFRM_QUEUE_TMO_MIN;
	if (!FUNC2(&pq->hold_timer, jiffies))
		FUNC8(new);
	FUNC7(&pq->hold_queue.lock);
}