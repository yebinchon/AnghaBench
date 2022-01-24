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
 unsigned int FUNC2 (unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct super_block*,scalar_t__,unsigned int) ; 

__le64 *FUNC7(struct super_block *sb,
		u64 id_table_start, u64 next_table, unsigned short no_ids)
{
	unsigned int length = FUNC2(no_ids);
	__le64 *table;

	FUNC3("In read_id_index_table, length %d\n", length);

	/* Sanity check values */

	/* there should always be at least one id */
	if (no_ids == 0)
		return FUNC0(-EINVAL);

	/*
	 * length bytes should not extend into the next table - this check
	 * also traps instances where id_table_start is incorrectly larger
	 * than the next table start
	 */
	if (id_table_start + length > next_table)
		return FUNC0(-EINVAL);

	table = FUNC6(sb, id_table_start, length);

	/*
	 * table[0] points to the first id lookup table metadata block, this
	 * should be less than id_table_start
	 */
	if (!FUNC1(table) && FUNC5(table[0]) >= id_table_start) {
		FUNC4(table);
		return FUNC0(-EINVAL);
	}

	return table;
}