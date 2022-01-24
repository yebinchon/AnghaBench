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
struct TYPE_2__ {int /*<<< orphan*/  (* xpi_rewind ) (struct rpc_xprt_iter*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_xprt_iter*) ; 
 TYPE_1__* FUNC3 (struct rpc_xprt_iter*) ; 

__attribute__((used)) static
void FUNC4(struct rpc_xprt_iter *xpi)
{
	FUNC0();
	FUNC3(xpi)->xpi_rewind(xpi);
	FUNC1();
}