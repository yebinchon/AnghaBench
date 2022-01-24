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
typedef  int /*<<< orphan*/  xfs_lsn_t ;
struct xfs_log_item {int /*<<< orphan*/  li_lsn; } ;
struct xfs_ail {int /*<<< orphan*/  ail_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct xfs_log_item* FUNC2 (struct xfs_ail*) ; 

xfs_lsn_t
FUNC3(
	struct xfs_ail		*ailp)
{
	xfs_lsn_t		lsn = 0;
	struct xfs_log_item	*lip;

	FUNC0(&ailp->ail_lock);
	lip = FUNC2(ailp);
	if (lip)
		lsn = lip->li_lsn;
	FUNC1(&ailp->ail_lock);

	return lsn;
}