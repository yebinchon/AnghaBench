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
typedef  int /*<<< orphan*/  u32 ;
struct socket {int dummy; } ;
struct rxrpc_call {int /*<<< orphan*/  user_mutex; int /*<<< orphan*/  debug_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,struct rxrpc_call*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rxrpc_call*) ; 

bool FUNC5(struct socket *sock, struct rxrpc_call *call,
			     u32 abort_code, int error, const char *why)
{
	bool aborted;

	FUNC0("{%d},%d,%d,%s", call->debug_id, abort_code, error, why);

	FUNC1(&call->user_mutex);

	aborted = FUNC3(why, call, 0, abort_code, error);
	if (aborted)
		FUNC4(call);

	FUNC2(&call->user_mutex);
	return aborted;
}