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
struct rxrpc_call {int /*<<< orphan*/  state_lock; } ;

/* Variables and functions */
 int FUNC0 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC3(struct rxrpc_call *call)
{
	bool ret;

	FUNC1(&call->state_lock);
	ret = FUNC0(call);
	FUNC2(&call->state_lock);
	return ret;
}