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
struct ipc_namespace {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipc_namespace*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipc_namespace*) ; 
 int /*<<< orphan*/  mq_lock ; 
 int /*<<< orphan*/  FUNC2 (struct ipc_namespace*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ipc_namespace *ns)
{
	if (FUNC3(&ns->count, &mq_lock)) {
		FUNC1(ns);
		FUNC4(&mq_lock);
		FUNC2(ns);
		FUNC0(ns);
	}
}