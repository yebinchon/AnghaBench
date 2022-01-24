#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct svc_rqst {struct nlm_args* rq_argp; } ;
struct TYPE_3__ {int /*<<< orphan*/  fl_type; } ;
struct TYPE_4__ {TYPE_1__ fl; } ;
struct nlm_args {TYPE_2__ lock; int /*<<< orphan*/  cookie; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  F_UNLCK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC2 (struct svc_rqst*,int /*<<< orphan*/ *) ; 

int
FUNC3(struct svc_rqst *rqstp, __be32 *p)
{
	struct nlm_args *argp = rqstp->rq_argp;

	if (!(p = FUNC0(p, &argp->cookie))
	 || !(p = FUNC1(p, &argp->lock)))
		return 0;
	argp->lock.fl.fl_type = F_UNLCK;
	return FUNC2(rqstp, p);
}