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
struct mmu_notifier {int dummy; } ;
struct mm_struct {int dummy; } ;
struct hmm {struct mmu_notifier mmu_notifier; scalar_t__ notifiers; int /*<<< orphan*/  ranges_lock; int /*<<< orphan*/  ranges; int /*<<< orphan*/  mirrors_sem; int /*<<< orphan*/  mirrors; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mmu_notifier* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct hmm* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mmu_notifier *FUNC6(struct mm_struct *mm)
{
	struct hmm *hmm;

	hmm = FUNC4(sizeof(*hmm), GFP_KERNEL);
	if (!hmm)
		return FUNC0(-ENOMEM);

	FUNC3(&hmm->wq);
	FUNC1(&hmm->mirrors);
	FUNC2(&hmm->mirrors_sem);
	FUNC1(&hmm->ranges);
	FUNC5(&hmm->ranges_lock);
	hmm->notifiers = 0;
	return &hmm->mmu_notifier;
}