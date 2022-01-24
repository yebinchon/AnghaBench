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
struct rpc_clnt {int /*<<< orphan*/  cl_count; int /*<<< orphan*/  cl_tasks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  destroy_wait ; 
 int /*<<< orphan*/  FUNC1 (char*,struct rpc_clnt*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct rpc_clnt* FUNC3 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct rpc_clnt *clnt)
{
	FUNC1("RPC:       rpc_release_client(%p)\n", clnt);

	do {
		if (FUNC2(&clnt->cl_tasks))
			FUNC4(&destroy_wait);
		if (!FUNC0(&clnt->cl_count))
			break;
		clnt = FUNC3(clnt);
	} while (clnt != NULL);
}