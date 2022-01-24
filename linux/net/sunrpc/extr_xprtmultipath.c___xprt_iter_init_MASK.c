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
struct rpc_xprt_switch {int dummy; } ;
struct rpc_xprt_iter_ops {int dummy; } ;
struct rpc_xprt_iter {struct rpc_xprt_iter_ops const* xpi_ops; int /*<<< orphan*/ * xpi_cursor; int /*<<< orphan*/  xpi_xpswitch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_xprt_switch*) ; 

__attribute__((used)) static void FUNC2(struct rpc_xprt_iter *xpi,
		struct rpc_xprt_switch *xps,
		const struct rpc_xprt_iter_ops *ops)
{
	FUNC0(xpi->xpi_xpswitch, FUNC1(xps));
	xpi->xpi_cursor = NULL;
	xpi->xpi_ops = ops;
}