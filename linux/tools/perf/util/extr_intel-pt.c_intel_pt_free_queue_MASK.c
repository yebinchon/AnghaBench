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
struct intel_pt_queue {int /*<<< orphan*/  chain; int /*<<< orphan*/  last_branch_rb; int /*<<< orphan*/  last_branch; int /*<<< orphan*/  event_buf; int /*<<< orphan*/  decoder; int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_pt_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *priv)
{
	struct intel_pt_queue *ptq = priv;

	if (!ptq)
		return;
	FUNC2(ptq->thread);
	FUNC1(ptq->decoder);
	FUNC3(&ptq->event_buf);
	FUNC3(&ptq->last_branch);
	FUNC3(&ptq->last_branch_rb);
	FUNC3(&ptq->chain);
	FUNC0(ptq);
}