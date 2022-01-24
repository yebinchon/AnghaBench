#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rpc_clnt {int /*<<< orphan*/  cl_tasks; int /*<<< orphan*/  cl_xprt; TYPE_1__* cl_program; } ;
struct TYPE_4__ {int /*<<< orphan*/  servername; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  destroy_wait ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct rpc_clnt *clnt)
{
	FUNC2();

	FUNC0("RPC:       shutting down %s client for %s\n",
			clnt->cl_program->name,
			FUNC3(clnt->cl_xprt)->servername);

	while (!FUNC1(&clnt->cl_tasks)) {
		FUNC4(clnt);
		FUNC6(destroy_wait,
			FUNC1(&clnt->cl_tasks), 1*HZ);
	}

	FUNC5(clnt);
}