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
struct ext2_xattr_entry {scalar_t__ e_value_block; int /*<<< orphan*/  e_value_offs; int /*<<< orphan*/  e_value_size; } ;

/* Variables and functions */
 struct ext2_xattr_entry* FUNC0 (struct ext2_xattr_entry*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(struct ext2_xattr_entry *entry,
		       char *end, size_t end_offs)
{
	struct ext2_xattr_entry *next;
	size_t size;

	next = FUNC0(entry);
	if ((char *)next >= end)
		return false;

	if (entry->e_value_block != 0)
		return false;

	size = FUNC2(entry->e_value_size);
	if (size > end_offs ||
	    FUNC1(entry->e_value_offs) + size > end_offs)
		return false;

	return true;
}