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
struct user_namespace {int dummy; } ;
struct rpc_rqst {TYPE_1__* rq_task; } ;
struct TYPE_2__ {int /*<<< orphan*/  tk_client; } ;

/* Variables and functions */
 struct user_namespace init_user_ns ; 
 struct user_namespace* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct user_namespace *FUNC1(const struct rpc_rqst *rqstp)
{
	if (rqstp->rq_task)
		return FUNC0(rqstp->rq_task->tk_client);
	return &init_user_ns;
}