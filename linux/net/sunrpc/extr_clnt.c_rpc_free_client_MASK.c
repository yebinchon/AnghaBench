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
struct rpc_clnt {int /*<<< orphan*/  cl_cred; int /*<<< orphan*/  cl_xpi; int /*<<< orphan*/  cl_xprt; int /*<<< orphan*/ * cl_metrics; struct rpc_clnt* cl_parent; TYPE_1__* cl_program; } ;
struct TYPE_4__ {int /*<<< orphan*/  servername; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rpc_clnt *
FUNC13(struct rpc_clnt *clnt)
{
	struct rpc_clnt *parent = NULL;

	FUNC0("RPC:       destroying %s client for %s\n",
			clnt->cl_program->name,
			FUNC3(clnt->cl_xprt)->servername);
	if (clnt->cl_parent != clnt)
		parent = clnt->cl_parent;
	FUNC5(clnt);
	FUNC6(clnt);
	FUNC9(clnt);
	FUNC8(clnt->cl_metrics);
	clnt->cl_metrics = NULL;
	FUNC12(FUNC4(clnt->cl_xprt));
	FUNC11(&clnt->cl_xpi);
	FUNC10();
	FUNC2(clnt->cl_cred);
	FUNC7(clnt);
	FUNC1(clnt);
	return parent;
}