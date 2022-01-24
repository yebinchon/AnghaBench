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
struct xfs_log_item {int dummy; } ;
struct xfs_ail_cursor {struct xfs_log_item* item; } ;
struct xfs_ail {int dummy; } ;

/* Variables and functions */
 struct xfs_log_item* FUNC0 (struct xfs_ail*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_ail*,struct xfs_ail_cursor*) ; 

struct xfs_log_item *
FUNC2(
	struct xfs_ail		*ailp,
	struct xfs_ail_cursor	*cur,
	xfs_lsn_t		lsn)
{
	FUNC1(ailp, cur);
	cur->item = FUNC0(ailp, lsn);
	return cur->item;
}