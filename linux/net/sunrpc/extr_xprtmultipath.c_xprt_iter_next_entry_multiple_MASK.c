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
typedef  int /*<<< orphan*/  xprt_switch_find_xprt_t ;
struct rpc_xprt_switch {int dummy; } ;
struct rpc_xprt_iter {int /*<<< orphan*/  xpi_cursor; int /*<<< orphan*/  xpi_xpswitch; } ;
struct rpc_xprt {int dummy; } ;

/* Variables and functions */
 struct rpc_xprt_switch* FUNC0 (int /*<<< orphan*/ ) ; 
 struct rpc_xprt* FUNC1 (struct rpc_xprt_switch*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
struct rpc_xprt *FUNC2(struct rpc_xprt_iter *xpi,
		xprt_switch_find_xprt_t find_next)
{
	struct rpc_xprt_switch *xps = FUNC0(xpi->xpi_xpswitch);

	if (xps == NULL)
		return NULL;
	return FUNC1(xps, &xpi->xpi_cursor, find_next);
}