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
struct sunrpc_net {int /*<<< orphan*/  gssp_lock; struct rpc_clnt* gssp_clnt; } ;
struct rpc_clnt {int /*<<< orphan*/  cl_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rpc_clnt *FUNC3(struct sunrpc_net *sn)
{
	struct rpc_clnt *clnt;

	FUNC1(&sn->gssp_lock);
	clnt = sn->gssp_clnt;
	if (clnt)
		FUNC0(&clnt->cl_count);
	FUNC2(&sn->gssp_lock);
	return clnt;
}