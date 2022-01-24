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
struct nilfs_bmap {int /*<<< orphan*/  b_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_bmap*) ; 
 int FUNC2 (struct nilfs_bmap*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct nilfs_bmap *bmap)
{
	int ret;

	FUNC0(&bmap->b_sem);
	ret = FUNC2(bmap);
	FUNC1(bmap);
	FUNC3(&bmap->b_sem);
	return ret;
}