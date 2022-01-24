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
struct nilfs_bmap {int /*<<< orphan*/  b_inode; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct nilfs_bmap*) ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_bmap*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct nilfs_bmap *bmap)
{
	int ret = 0;

	FUNC0(bmap);

	if (FUNC2(FUNC1(bmap), bmap->b_inode))
		ret = -EIO;
	return ret;
}