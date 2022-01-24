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
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tmp ; 

int FUNC5(struct pnfs_block_layout *bl, bool rw,
		sector_t start, sector_t end)
{
	int err, err2;
	FUNC0(tmp);

	FUNC3(&bl->bl_ext_lock);
	err = FUNC2(&bl->bl_ext_ro, start, end, &tmp);
	if (rw) {
		err2 = FUNC2(&bl->bl_ext_rw, start, end, &tmp);
		if (!err)
			err = err2;
	}
	FUNC4(&bl->bl_ext_lock);

	FUNC1(&tmp);
	return err;
}