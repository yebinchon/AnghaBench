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
struct rpc_xprt {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPRT_WRITE_SPACE ; 
 int /*<<< orphan*/  FUNC0 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct rpc_xprt*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC3(struct rpc_xprt *xprt)
{
	if (FUNC2(XPRT_WRITE_SPACE, &xprt->state)) {
		FUNC0(xprt);
		FUNC1("RPC:       write space: waking waiting task on "
				"xprt %p\n", xprt);
		return true;
	}
	return false;
}