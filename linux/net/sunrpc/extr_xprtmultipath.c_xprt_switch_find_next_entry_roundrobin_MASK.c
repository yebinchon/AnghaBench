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
struct list_head {int dummy; } ;
struct rpc_xprt_switch {int /*<<< orphan*/  xps_nactive; int /*<<< orphan*/  xps_queuelen; struct list_head xps_xprt_list; } ;
struct rpc_xprt {int /*<<< orphan*/  queuelen; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 struct rpc_xprt* FUNC1 (struct list_head*,struct rpc_xprt const*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
struct rpc_xprt *FUNC3(struct rpc_xprt_switch *xps,
		const struct rpc_xprt *cur)
{
	struct list_head *head = &xps->xps_xprt_list;
	struct rpc_xprt *xprt;
	unsigned int nactive;

	for (;;) {
		unsigned long xprt_queuelen, xps_queuelen;

		xprt = FUNC1(head, cur);
		if (!xprt)
			break;
		xprt_queuelen = FUNC2(&xprt->queuelen);
		xps_queuelen = FUNC2(&xps->xps_queuelen);
		nactive = FUNC0(xps->xps_nactive);
		/* Exit loop if xprt_queuelen <= average queue length */
		if (xprt_queuelen * nactive <= xps_queuelen)
			break;
		cur = xprt;
	}
	return xprt;
}