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
struct task_struct {struct kcov* kcov; } ;
struct kcov {int /*<<< orphan*/  lock; int /*<<< orphan*/  mode; struct task_struct* t; } ;

/* Variables and functions */
 int /*<<< orphan*/  KCOV_MODE_INIT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kcov*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct task_struct *t)
{
	struct kcov *kcov;

	kcov = t->kcov;
	if (kcov == NULL)
		return;
	FUNC3(&kcov->lock);
	if (FUNC0(kcov->t != t)) {
		FUNC4(&kcov->lock);
		return;
	}
	/* Just to not leave dangling references behind. */
	FUNC2(t);
	kcov->t = NULL;
	kcov->mode = KCOV_MODE_INIT;
	FUNC4(&kcov->lock);
	FUNC1(kcov);
}