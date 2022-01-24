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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct ext4_xattr_entry {scalar_t__ e_name_len; scalar_t__ e_value_inum; int /*<<< orphan*/  e_value_offs; int /*<<< orphan*/  e_value_size; int /*<<< orphan*/  e_name; } ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 struct ext4_xattr_entry* FUNC0 (struct ext4_xattr_entry*) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ EXT4_XATTR_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct ext4_xattr_entry*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct ext4_xattr_entry *entry, void *end,
			 void *value_start)
{
	struct ext4_xattr_entry *e = entry;

	/* Find the end of the names list */
	while (!FUNC2(e)) {
		struct ext4_xattr_entry *next = FUNC0(e);
		if ((void *)next >= end)
			return -EFSCORRUPTED;
		if (FUNC5(e->e_name, e->e_name_len) != e->e_name_len)
			return -EFSCORRUPTED;
		e = next;
	}

	/* Check the values */
	while (!FUNC2(entry)) {
		u32 size = FUNC4(entry->e_value_size);

		if (size > EXT4_XATTR_SIZE_MAX)
			return -EFSCORRUPTED;

		if (size != 0 && entry->e_value_inum == 0) {
			u16 offs = FUNC3(entry->e_value_offs);
			void *value;

			/*
			 * The value cannot overlap the names, and the value
			 * with padding cannot extend beyond 'end'.  Check both
			 * the padded and unpadded sizes, since the size may
			 * overflow to 0 when adding padding.
			 */
			if (offs > end - value_start)
				return -EFSCORRUPTED;
			value = value_start + offs;
			if (value < (void *)e + sizeof(u32) ||
			    size > end - value ||
			    FUNC1(size) > end - value)
				return -EFSCORRUPTED;
		}
		entry = FUNC0(entry);
	}

	return 0;
}