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
struct svc_rqst {int /*<<< orphan*/  rq_auth_data; int /*<<< orphan*/  rq_argp; int /*<<< orphan*/  rq_resp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_rqst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rq_rcu_head ; 
 int /*<<< orphan*/  FUNC2 (struct svc_rqst*) ; 

void
FUNC3(struct svc_rqst *rqstp)
{
	FUNC2(rqstp);
	FUNC0(rqstp->rq_resp);
	FUNC0(rqstp->rq_argp);
	FUNC0(rqstp->rq_auth_data);
	FUNC1(rqstp, rq_rcu_head);
}