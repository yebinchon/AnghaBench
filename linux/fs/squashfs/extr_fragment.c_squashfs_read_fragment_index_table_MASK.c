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
typedef  scalar_t__ u64 ;
struct super_block {int dummy; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct super_block*,scalar_t__,unsigned int) ; 

__le64 *FUNC6(struct super_block *sb,
	u64 fragment_table_start, u64 next_table, unsigned int fragments)
{
	unsigned int length = FUNC2(fragments);
	__le64 *table;

	/*
	 * Sanity check, length bytes should not extend into the next table -
	 * this check also traps instances where fragment_table_start is
	 * incorrectly larger than the next table start
	 */
	if (fragment_table_start + length > next_table)
		return FUNC0(-EINVAL);

	table = FUNC5(sb, fragment_table_start, length);

	/*
	 * table[0] points to the first fragment table metadata block, this
	 * should be less than fragment_table_start
	 */
	if (!FUNC1(table) && FUNC4(table[0]) >= fragment_table_start) {
		FUNC3(table);
		return FUNC0(-EINVAL);
	}

	return table;
}