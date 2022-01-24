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
struct TYPE_2__ {int /*<<< orphan*/ * cr_group_info; } ;
struct svc_rqst {TYPE_1__ rq_cred; int /*<<< orphan*/ * rq_client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct svc_rqst *rqstp)
{
	if (rqstp->rq_client)
		FUNC0(rqstp->rq_client);
	rqstp->rq_client = NULL;
	if (rqstp->rq_cred.cr_group_info)
		FUNC1(rqstp->rq_cred.cr_group_info);
	rqstp->rq_cred.cr_group_info = NULL;

	return 0; /* don't drop */
}