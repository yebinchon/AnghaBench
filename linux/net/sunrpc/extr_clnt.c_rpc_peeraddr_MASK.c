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
struct sockaddr {int dummy; } ;
struct rpc_xprt {size_t addrlen; int /*<<< orphan*/  addr; } ;
struct rpc_clnt {int /*<<< orphan*/  cl_xprt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sockaddr*,int /*<<< orphan*/ *,size_t) ; 
 struct rpc_xprt* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

size_t FUNC4(struct rpc_clnt *clnt, struct sockaddr *buf, size_t bufsize)
{
	size_t bytes;
	struct rpc_xprt *xprt;

	FUNC2();
	xprt = FUNC1(clnt->cl_xprt);

	bytes = xprt->addrlen;
	if (bytes > bufsize)
		bytes = bufsize;
	FUNC0(buf, &xprt->addr, bytes);
	FUNC3();

	return bytes;
}