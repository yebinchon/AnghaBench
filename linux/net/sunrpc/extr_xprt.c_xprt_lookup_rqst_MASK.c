#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  bad_xids; } ;
struct rpc_xprt {TYPE_1__ stat; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_xtime; int /*<<< orphan*/  rq_rtt; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_xprt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rpc_rqst* FUNC5 (struct rpc_xprt*,int /*<<< orphan*/ ) ; 

struct rpc_rqst *FUNC6(struct rpc_xprt *xprt, __be32 xid)
{
	struct rpc_rqst *entry;

	entry = FUNC5(xprt, xid);
	if (entry != NULL) {
		FUNC4(xprt, xid, 0);
		entry->rq_rtt = FUNC2(FUNC1(), entry->rq_xtime);
		return entry;
	}

	FUNC0("RPC:       xprt_lookup_rqst did not find xid %08x\n",
			FUNC3(xid));
	FUNC4(xprt, xid, -ENOENT);
	xprt->stat.bad_xids++;
	return NULL;
}