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
struct rq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct task_struct* FUNC1 (struct rq*) ; 
 int /*<<< orphan*/  FUNC2 (struct rq*) ; 
 int /*<<< orphan*/  FUNC3 (struct rq*,struct task_struct*) ; 

__attribute__((used)) static struct task_struct *
FUNC4(struct rq *rq, struct task_struct *prev, struct rq_flags *rf)
{
	struct task_struct *p;

	FUNC0(prev || rf);

	if (!FUNC2(rq))
		return NULL;

	p = FUNC1(rq);
	FUNC3(rq, p);
	return p;
}