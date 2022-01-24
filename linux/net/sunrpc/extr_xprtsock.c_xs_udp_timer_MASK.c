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
struct rpc_xprt {int /*<<< orphan*/  transport_lock; } ;
struct rpc_task {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_xprt*,struct rpc_task*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rpc_xprt *xprt, struct rpc_task *task)
{
	FUNC0(&xprt->transport_lock);
	FUNC2(xprt, task, -ETIMEDOUT);
	FUNC1(&xprt->transport_lock);
}