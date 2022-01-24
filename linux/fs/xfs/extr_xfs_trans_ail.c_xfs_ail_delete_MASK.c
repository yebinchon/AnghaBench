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
struct xfs_log_item {int /*<<< orphan*/  li_ail; } ;
struct xfs_ail {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_ail*,struct xfs_log_item*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_ail*,struct xfs_log_item*) ; 

__attribute__((used)) static void
FUNC3(
	struct xfs_ail		*ailp,
	struct xfs_log_item	*lip)
{
	FUNC1(ailp, lip);
	FUNC0(&lip->li_ail);
	FUNC2(ailp, lip);
}