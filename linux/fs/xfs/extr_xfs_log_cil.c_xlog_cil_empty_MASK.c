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
struct xlog {struct xfs_cil* l_cilp; } ;
struct xfs_cil {int /*<<< orphan*/  xc_push_lock; int /*<<< orphan*/  xc_cil; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool
FUNC3(
	struct xlog	*log)
{
	struct xfs_cil	*cil = log->l_cilp;
	bool		empty = false;

	FUNC1(&cil->xc_push_lock);
	if (FUNC0(&cil->xc_cil))
		empty = true;
	FUNC2(&cil->xc_push_lock);
	return empty;
}