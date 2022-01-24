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
struct svc_rqst {struct auth_ops* rq_authop; } ;
struct auth_ops {int (* release ) (struct svc_rqst*) ;} ;

/* Variables and functions */
 int FUNC0 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_ops*) ; 

int FUNC2(struct svc_rqst *rqstp)
{
	struct auth_ops *aops = rqstp->rq_authop;
	int rv = 0;

	rqstp->rq_authop = NULL;

	if (aops) {
		rv = aops->release(rqstp);
		FUNC1(aops);
	}
	return rv;
}