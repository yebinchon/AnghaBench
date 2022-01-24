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
struct task_struct {int dummy; } ;
struct rq_flags {int dummy; } ;
struct rq {struct task_struct* idle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rq*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct rq*,struct task_struct*) ; 

__attribute__((used)) static struct task_struct *
FUNC2(struct rq *rq, struct task_struct *prev, struct rq_flags *rf)
{
	struct task_struct *next = rq->idle;

	if (prev)
		FUNC0(rq, prev);

	FUNC1(rq, next);

	return next;
}