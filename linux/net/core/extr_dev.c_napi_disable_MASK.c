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
struct napi_struct {int /*<<< orphan*/  state; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAPI_STATE_DISABLE ; 
 int /*<<< orphan*/  NAPI_STATE_NPSVC ; 
 int /*<<< orphan*/  NAPI_STATE_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct napi_struct *n)
{
	FUNC2();
	FUNC4(NAPI_STATE_DISABLE, &n->state);

	while (FUNC5(NAPI_STATE_SCHED, &n->state))
		FUNC3(1);
	while (FUNC5(NAPI_STATE_NPSVC, &n->state))
		FUNC3(1);

	FUNC1(&n->timer);

	FUNC0(NAPI_STATE_DISABLE, &n->state);
}