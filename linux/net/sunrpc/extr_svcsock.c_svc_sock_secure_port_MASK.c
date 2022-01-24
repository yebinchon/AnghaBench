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
struct svc_rqst {int /*<<< orphan*/  rq_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  RQ_SECURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_rqst*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct svc_rqst *rqstp)
{
	if (FUNC3(FUNC2(rqstp)))
		FUNC1(RQ_SECURE, &rqstp->rq_flags);
	else
		FUNC0(RQ_SECURE, &rqstp->rq_flags);
}