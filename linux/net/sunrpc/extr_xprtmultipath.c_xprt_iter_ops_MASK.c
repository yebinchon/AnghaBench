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
struct rpc_xprt_iter_ops {int dummy; } ;
struct rpc_xprt_iter {int /*<<< orphan*/  xpi_xpswitch; struct rpc_xprt_iter_ops const* xpi_ops; } ;
struct TYPE_2__ {struct rpc_xprt_iter_ops const* xps_iter_ops; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
const struct rpc_xprt_iter_ops *FUNC1(const struct rpc_xprt_iter *xpi)
{
	if (xpi->xpi_ops != NULL)
		return xpi->xpi_ops;
	return FUNC0(xpi->xpi_xpswitch)->xps_iter_ops;
}