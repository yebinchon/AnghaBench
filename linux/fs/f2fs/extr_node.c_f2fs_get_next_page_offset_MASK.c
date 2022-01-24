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
struct dnode_of_data {int cur_level; int max_level; int /*<<< orphan*/  inode; } ;
typedef  unsigned int pgoff_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int NIDS_PER_BLOCK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

pgoff_t FUNC4(struct dnode_of_data *dn, pgoff_t pgofs)
{
	const long direct_index = FUNC1(dn->inode);
	const long direct_blks = FUNC0(dn->inode);
	const long indirect_blks = FUNC0(dn->inode) * NIDS_PER_BLOCK;
	unsigned int skipped_unit = FUNC0(dn->inode);
	int cur_level = dn->cur_level;
	int max_level = dn->max_level;
	pgoff_t base = 0;

	if (!dn->max_level)
		return pgofs + 1;

	while (max_level-- > cur_level)
		skipped_unit *= NIDS_PER_BLOCK;

	switch (dn->max_level) {
	case 3:
		base += 2 * indirect_blks;
		/* fall through */
	case 2:
		base += 2 * direct_blks;
		/* fall through */
	case 1:
		base += direct_index;
		break;
	default:
		FUNC3(FUNC2(dn->inode), 1);
	}

	return ((pgofs - base) / skipped_unit + 1) * skipped_unit + base;
}