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
struct svc_xprt {int /*<<< orphan*/  xpt_nr_rqsts; } ;
struct svc_rqst {int /*<<< orphan*/  rq_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  RQ_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_xprt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct svc_rqst *rqstp, struct svc_xprt *xprt)
{
	if (!FUNC3(RQ_DATA, &rqstp->rq_flags)) {
		if (!FUNC2(xprt))
			return false;
		FUNC0(&xprt->xpt_nr_rqsts);
		FUNC1(RQ_DATA, &rqstp->rq_flags);
	}
	return true;
}