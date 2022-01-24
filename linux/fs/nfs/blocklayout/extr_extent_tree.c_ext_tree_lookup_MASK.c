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
struct pnfs_block_layout {int /*<<< orphan*/  bl_ext_lock; int /*<<< orphan*/  bl_ext_rw; int /*<<< orphan*/  bl_ext_ro; } ;
struct pnfs_block_extent {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pnfs_block_extent*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool
FUNC3(struct pnfs_block_layout *bl, sector_t isect,
	    struct pnfs_block_extent *ret, bool rw)
{
	bool found = false;

	FUNC1(&bl->bl_ext_lock);
	if (!rw)
		found = FUNC0(&bl->bl_ext_ro, isect, ret);
	if (!found)
		found = FUNC0(&bl->bl_ext_rw, isect, ret);
	FUNC2(&bl->bl_ext_lock);

	return found;
}