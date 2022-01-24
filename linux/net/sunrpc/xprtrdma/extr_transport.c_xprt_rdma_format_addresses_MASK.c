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
struct sockaddr {int sa_family; } ;
struct rpc_xprt {char** address_strings; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t RPC_DISPLAY_ADDR ; 
 size_t RPC_DISPLAY_HEX_PORT ; 
 size_t RPC_DISPLAY_PORT ; 
 size_t RPC_DISPLAY_PROTO ; 
 void* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_xprt*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_xprt*,struct sockaddr*) ; 

void
FUNC7(struct rpc_xprt *xprt, struct sockaddr *sap)
{
	char buf[128];

	switch (sap->sa_family) {
	case AF_INET:
		FUNC5(xprt, sap);
		break;
	case AF_INET6:
		FUNC6(xprt, sap);
		break;
	default:
		FUNC1("rpcrdma: Unrecognized address family\n");
		return;
	}

	(void)FUNC3(sap, buf, sizeof(buf));
	xprt->address_strings[RPC_DISPLAY_ADDR] = FUNC0(buf, GFP_KERNEL);

	FUNC4(buf, sizeof(buf), "%u", FUNC2(sap));
	xprt->address_strings[RPC_DISPLAY_PORT] = FUNC0(buf, GFP_KERNEL);

	FUNC4(buf, sizeof(buf), "%4hx", FUNC2(sap));
	xprt->address_strings[RPC_DISPLAY_HEX_PORT] = FUNC0(buf, GFP_KERNEL);

	xprt->address_strings[RPC_DISPLAY_PROTO] = "rdma";
}