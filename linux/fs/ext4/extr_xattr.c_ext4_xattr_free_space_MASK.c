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
struct ext4_xattr_entry {int /*<<< orphan*/  e_name_len; int /*<<< orphan*/  e_value_offs; scalar_t__ e_value_size; int /*<<< orphan*/  e_value_inum; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct ext4_xattr_entry* FUNC1 (struct ext4_xattr_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct ext4_xattr_entry*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC4(struct ext4_xattr_entry *last,
				    size_t *min_offs, void *base, int *total)
{
	for (; !FUNC2(last); last = FUNC1(last)) {
		if (!last->e_value_inum && last->e_value_size) {
			size_t offs = FUNC3(last->e_value_offs);
			if (offs < *min_offs)
				*min_offs = offs;
		}
		if (total)
			*total += FUNC0(last->e_name_len);
	}
	return (*min_offs - ((void *)last - base) - sizeof(__u32));
}