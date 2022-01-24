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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
struct rpc_xprt {size_t addrlen; int /*<<< orphan*/  xprt_net; int /*<<< orphan*/  addr; } ;
struct rpc_clnt {int /*<<< orphan*/  cl_xprt; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct net* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 
 struct rpc_xprt* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,struct sockaddr*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct net*,struct sockaddr*,size_t,struct sockaddr*) ; 

int FUNC9(struct rpc_clnt *clnt, struct sockaddr *buf, size_t buflen)
{
	struct sockaddr_storage address;
	struct sockaddr *sap = (struct sockaddr *)&address;
	struct rpc_xprt *xprt;
	struct net *net;
	size_t salen;
	int err;

	FUNC4();
	xprt = FUNC3(clnt->cl_xprt);
	salen = xprt->addrlen;
	FUNC1(sap, &xprt->addr, salen);
	net = FUNC0(xprt->xprt_net);
	FUNC5();

	FUNC7(sap, 0);
	err = FUNC8(net, sap, salen, buf);
	FUNC2(net);
	if (err != 0)
		/* Couldn't discover local address, return ANYADDR */
		return FUNC6(sap->sa_family, buf, buflen);
	return 0;
}