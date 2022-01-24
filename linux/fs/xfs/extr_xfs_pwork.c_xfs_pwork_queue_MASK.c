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
struct xfs_pwork_ctl {int /*<<< orphan*/  wq; int /*<<< orphan*/  nr_work; } ;
struct xfs_pwork {int /*<<< orphan*/  work; struct xfs_pwork_ctl* pctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfs_pwork_work ; 

void
FUNC3(
	struct xfs_pwork_ctl	*pctl,
	struct xfs_pwork	*pwork)
{
	FUNC0(&pwork->work, xfs_pwork_work);
	pwork->pctl = pctl;
	FUNC1(&pctl->nr_work);
	FUNC2(pctl->wq, &pwork->work);
}