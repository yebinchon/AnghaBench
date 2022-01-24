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
struct squashfs_xattr_id_table {int /*<<< orphan*/  xattr_ids; int /*<<< orphan*/  xattr_table_start; } ;
typedef  struct squashfs_xattr_id_table __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct squashfs_xattr_id_table* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct squashfs_xattr_id_table*) ; 
 unsigned int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct squashfs_xattr_id_table*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 struct squashfs_xattr_id_table* FUNC7 (struct super_block*,scalar_t__,unsigned int) ; 

__le64 *FUNC8(struct super_block *sb, u64 start,
		u64 *xattr_table_start, int *xattr_ids)
{
	unsigned int len;
	struct squashfs_xattr_id_table *id_table;

	id_table = FUNC7(sb, start, sizeof(*id_table));
	if (FUNC1(id_table))
		return (__le64 *) id_table;

	*xattr_table_start = FUNC6(id_table->xattr_table_start);
	*xattr_ids = FUNC5(id_table->xattr_ids);
	FUNC4(id_table);

	/* Sanity check values */

	/* there is always at least one xattr id */
	if (*xattr_ids == 0)
		return FUNC0(-EINVAL);

	/* xattr_table should be less than start */
	if (*xattr_table_start >= start)
		return FUNC0(-EINVAL);

	len = FUNC2(*xattr_ids);

	FUNC3("In read_xattr_index_table, length %d\n", len);

	return FUNC7(sb, start + sizeof(*id_table), len);
}