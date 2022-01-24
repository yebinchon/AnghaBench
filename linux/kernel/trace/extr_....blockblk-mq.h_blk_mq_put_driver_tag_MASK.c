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
struct request {int tag; int internal_tag; int /*<<< orphan*/  mq_hctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct request*) ; 

__attribute__((used)) static inline void FUNC1(struct request *rq)
{
	if (rq->tag == -1 || rq->internal_tag == -1)
		return;

	FUNC0(rq->mq_hctx, rq);
}