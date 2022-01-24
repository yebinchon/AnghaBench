#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xprt_create {int ident; char* servername; int /*<<< orphan*/  flags; TYPE_1__* bc_xprt; int /*<<< orphan*/  addrlen; TYPE_2__* dstaddr; int /*<<< orphan*/  srcaddr; int /*<<< orphan*/  net; } ;
struct sockaddr_un {char* sun_path; } ;
struct sockaddr_in6 {char sin6_addr; } ;
struct TYPE_6__ {char s_addr; } ;
struct sockaddr_in {TYPE_3__ sin_addr; } ;
struct rpc_xprt {int resvport; } ;
struct rpc_create_args {int protocol; char* servername; int flags; int nconnect; TYPE_2__* address; TYPE_1__* bc_xprt; int /*<<< orphan*/  addrsize; int /*<<< orphan*/  saddress; int /*<<< orphan*/  net; } ;
struct rpc_clnt {int resvport; } ;
typedef  int /*<<< orphan*/  servername ;
struct TYPE_5__ {int sa_family; } ;
struct TYPE_4__ {struct rpc_xprt* xpt_bc_xprt; } ;

/* Variables and functions */
#define  AF_INET 130 
#define  AF_INET6 129 
#define  AF_LOCAL 128 
 int /*<<< orphan*/  EINVAL ; 
 struct rpc_xprt* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rpc_xprt*) ; 
 int RPC_CLNT_CREATE_INFINITE_SLOTS ; 
 int RPC_CLNT_CREATE_NONPRIVPORT ; 
 int RPC_CLNT_CREATE_NO_IDLE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  XPRT_CREATE_INFINITE_SLOTS ; 
 int /*<<< orphan*/  XPRT_CREATE_NO_IDLE_TIMEOUT ; 
 int XPRT_TRANSPORT_BC ; 
 scalar_t__ FUNC3 (struct rpc_xprt*,struct xprt_create*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct rpc_xprt* FUNC4 (struct rpc_create_args*,struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 
 struct rpc_xprt* FUNC6 (struct xprt_create*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_xprt*) ; 

struct rpc_clnt *FUNC8(struct rpc_create_args *args)
{
	struct rpc_xprt *xprt;
	struct xprt_create xprtargs = {
		.net = args->net,
		.ident = args->protocol,
		.srcaddr = args->saddress,
		.dstaddr = args->address,
		.addrlen = args->addrsize,
		.servername = args->servername,
		.bc_xprt = args->bc_xprt,
	};
	char servername[48];
	struct rpc_clnt *clnt;
	int i;

	if (args->bc_xprt) {
		FUNC2(!(args->protocol & XPRT_TRANSPORT_BC));
		xprt = args->bc_xprt->xpt_bc_xprt;
		if (xprt) {
			FUNC7(xprt);
			return FUNC4(args, xprt);
		}
	}

	if (args->flags & RPC_CLNT_CREATE_INFINITE_SLOTS)
		xprtargs.flags |= XPRT_CREATE_INFINITE_SLOTS;
	if (args->flags & RPC_CLNT_CREATE_NO_IDLE_TIMEOUT)
		xprtargs.flags |= XPRT_CREATE_NO_IDLE_TIMEOUT;
	/*
	 * If the caller chooses not to specify a hostname, whip
	 * up a string representation of the passed-in address.
	 */
	if (xprtargs.servername == NULL) {
		struct sockaddr_un *sun =
				(struct sockaddr_un *)args->address;
		struct sockaddr_in *sin =
				(struct sockaddr_in *)args->address;
		struct sockaddr_in6 *sin6 =
				(struct sockaddr_in6 *)args->address;

		servername[0] = '\0';
		switch (args->address->sa_family) {
		case AF_LOCAL:
			FUNC5(servername, sizeof(servername), "%s",
				 sun->sun_path);
			break;
		case AF_INET:
			FUNC5(servername, sizeof(servername), "%pI4",
				 &sin->sin_addr.s_addr);
			break;
		case AF_INET6:
			FUNC5(servername, sizeof(servername), "%pI6",
				 &sin6->sin6_addr);
			break;
		default:
			/* caller wants default server name, but
			 * address family isn't recognized. */
			return FUNC0(-EINVAL);
		}
		xprtargs.servername = servername;
	}

	xprt = FUNC6(&xprtargs);
	if (FUNC1(xprt))
		return (struct rpc_clnt *)xprt;

	/*
	 * By default, kernel RPC client connects from a reserved port.
	 * CAP_NET_BIND_SERVICE will not be set for unprivileged requesters,
	 * but it is always enabled for rpciod, which handles the connect
	 * operation.
	 */
	xprt->resvport = 1;
	if (args->flags & RPC_CLNT_CREATE_NONPRIVPORT)
		xprt->resvport = 0;

	clnt = FUNC4(args, xprt);
	if (FUNC1(clnt) || args->nconnect <= 1)
		return clnt;

	for (i = 0; i < args->nconnect - 1; i++) {
		if (FUNC3(clnt, &xprtargs, NULL, NULL) < 0)
			break;
	}
	return clnt;
}