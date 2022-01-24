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
struct rpc_clnt {int /*<<< orphan*/  cl_count; int /*<<< orphan*/ * cl_auth; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rpc_clnt* FUNC2 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rpc_clnt *
FUNC4(struct rpc_clnt *clnt)
{
	if (clnt->cl_auth == NULL)
		return FUNC2(clnt);

	/*
	 * Note: RPCSEC_GSS may need to send NULL RPC calls in order to
	 *       release remaining GSS contexts. This mechanism ensures
	 *       that it can do so safely.
	 */
	FUNC1(&clnt->cl_count);
	FUNC3(clnt->cl_auth);
	clnt->cl_auth = NULL;
	if (FUNC0(&clnt->cl_count))
		return FUNC2(clnt);
	return NULL;
}