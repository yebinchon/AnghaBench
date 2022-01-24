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
struct hmm_mirror {int /*<<< orphan*/  list; struct hmm* hmm; } ;
struct hmm {int /*<<< orphan*/  mmu_notifier; int /*<<< orphan*/  mirrors_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct hmm_mirror *mirror)
{
	struct hmm *hmm = mirror->hmm;

	FUNC0(&hmm->mirrors_sem);
	FUNC1(&mirror->list);
	FUNC3(&hmm->mirrors_sem);
	FUNC2(&hmm->mmu_notifier);
}