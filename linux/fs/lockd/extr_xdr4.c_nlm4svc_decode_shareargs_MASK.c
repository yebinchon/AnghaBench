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
typedef  int /*<<< orphan*/  u32 ;
struct svc_rqst {struct nlm_args* rq_argp; } ;
struct nlm_lock {int /*<<< orphan*/  oh; int /*<<< orphan*/  fh; int /*<<< orphan*/  len; int /*<<< orphan*/  caller; int /*<<< orphan*/  svid; int /*<<< orphan*/  fl; } ;
struct nlm_args {void* fsm_access; void* fsm_mode; int /*<<< orphan*/  cookie; struct nlm_lock lock; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NLM_MAXSTRLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nlm_lock*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct svc_rqst*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC8(struct svc_rqst *rqstp, __be32 *p)
{
	struct nlm_args *argp = rqstp->rq_argp;
	struct nlm_lock	*lock = &argp->lock;

	FUNC1(lock, 0, sizeof(*lock));
	FUNC0(&lock->fl);
	lock->svid = ~(u32) 0;

	if (!(p = FUNC2(p, &argp->cookie))
	 || !(p = FUNC7(p, &lock->caller,
					    &lock->len, NLM_MAXSTRLEN))
	 || !(p = FUNC3(p, &lock->fh))
	 || !(p = FUNC4(p, &lock->oh)))
		return 0;
	argp->fsm_mode = FUNC5(*p++);
	argp->fsm_access = FUNC5(*p++);
	return FUNC6(rqstp, p);
}