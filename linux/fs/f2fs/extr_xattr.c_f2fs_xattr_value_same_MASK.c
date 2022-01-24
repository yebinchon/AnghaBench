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
struct f2fs_xattr_entry {int e_name_len; int /*<<< orphan*/  e_value_size; void* e_name; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void const*,size_t) ; 

__attribute__((used)) static bool FUNC2(struct f2fs_xattr_entry *entry,
					const void *value, size_t size)
{
	void *pval = entry->e_name + entry->e_name_len;

	return (FUNC0(entry->e_value_size) == size) &&
					!FUNC1(pval, value, size);
}