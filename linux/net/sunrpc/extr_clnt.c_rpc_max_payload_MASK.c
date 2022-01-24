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
struct rpc_clnt {int /*<<< orphan*/  cl_xprt; } ;
struct TYPE_2__ {size_t max_payload; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

size_t FUNC3(struct rpc_clnt *clnt)
{
	size_t ret;

	FUNC1();
	ret = FUNC0(clnt->cl_xprt)->max_payload;
	FUNC2();
	return ret;
}