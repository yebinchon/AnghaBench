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
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct address_space*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct address_space *mapping, pgoff_t index)
{
	int ret = FUNC1(mapping, index, true);

	/*
	 * This gets called from truncate / punch_hole path. As such, the caller
	 * must hold locks protecting against concurrent modifications of the
	 * page cache (usually fs-private i_mmap_sem for writing). Since the
	 * caller has seen a DAX entry for this index, we better find it
	 * at that index as well...
	 */
	FUNC0(!ret);
	return ret;
}