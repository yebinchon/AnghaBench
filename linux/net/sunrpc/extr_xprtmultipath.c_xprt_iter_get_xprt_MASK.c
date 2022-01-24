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
struct rpc_xprt_iter {int dummy; } ;
struct rpc_xprt {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  xpi_xprt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct rpc_xprt* FUNC2 (struct rpc_xprt_iter*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct rpc_xprt_iter*) ; 

struct rpc_xprt *FUNC4(struct rpc_xprt_iter *xpi)
{
	struct rpc_xprt *xprt;

	FUNC0();
	xprt = FUNC2(xpi, FUNC3(xpi)->xpi_xprt);
	FUNC1();
	return xprt;
}