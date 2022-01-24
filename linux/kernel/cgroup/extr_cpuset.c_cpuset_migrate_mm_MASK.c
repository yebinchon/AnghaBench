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
struct mm_struct {int dummy; } ;
struct cpuset_migrate_mm_work {int /*<<< orphan*/  work; int /*<<< orphan*/  to; int /*<<< orphan*/  from; struct mm_struct* mm; } ;
typedef  int /*<<< orphan*/  nodemask_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpuset_migrate_mm_workfn ; 
 int /*<<< orphan*/  cpuset_migrate_mm_wq ; 
 struct cpuset_migrate_mm_work* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct mm_struct *mm, const nodemask_t *from,
							const nodemask_t *to)
{
	struct cpuset_migrate_mm_work *mwork;

	mwork = FUNC1(sizeof(*mwork), GFP_KERNEL);
	if (mwork) {
		mwork->mm = mm;
		mwork->from = *from;
		mwork->to = *to;
		FUNC0(&mwork->work, cpuset_migrate_mm_workfn);
		FUNC3(cpuset_migrate_mm_wq, &mwork->work);
	} else {
		FUNC2(mm);
	}
}