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
typedef  void* uint64_t ;
struct xfs_bitmap_range {int /*<<< orphan*/  list; void* len; void* start; } ;
struct xfs_bitmap {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KM_MAYFAIL ; 
 struct xfs_bitmap_range* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(
	struct xfs_bitmap	*bitmap,
	uint64_t		start,
	uint64_t		len)
{
	struct xfs_bitmap_range	*bmr;

	bmr = FUNC1(sizeof(struct xfs_bitmap_range), KM_MAYFAIL);
	if (!bmr)
		return -ENOMEM;

	FUNC0(&bmr->list);
	bmr->start = start;
	bmr->len = len;
	FUNC2(&bmr->list, &bitmap->list);

	return 0;
}