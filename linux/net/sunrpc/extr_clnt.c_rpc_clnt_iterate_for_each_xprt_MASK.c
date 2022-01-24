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
struct rpc_xprt_iter {int dummy; } ;
typedef  struct rpc_xprt rpc_xprt ;
struct rpc_clnt {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rpc_clnt*,struct rpc_xprt_iter*) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_xprt_iter*) ; 
 struct rpc_xprt* FUNC2 (struct rpc_xprt_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_xprt*) ; 

int FUNC4(struct rpc_clnt *clnt,
		int (*fn)(struct rpc_clnt *, struct rpc_xprt *, void *),
		void *data)
{
	struct rpc_xprt_iter xpi;
	int ret;

	ret = FUNC0(clnt, &xpi);
	if (ret)
		return ret;
	for (;;) {
		struct rpc_xprt *xprt = FUNC2(&xpi);

		if (!xprt)
			break;
		ret = fn(clnt, xprt, data);
		FUNC3(xprt);
		if (ret < 0)
			break;
	}
	FUNC1(&xpi);
	return ret;
}