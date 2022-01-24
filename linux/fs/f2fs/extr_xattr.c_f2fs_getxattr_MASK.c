#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_xattr_entry {char* e_name; int e_name_len; int /*<<< orphan*/  e_value_size; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_xattr_sem; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 unsigned int F2FS_NAME_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,struct page*,int,unsigned int,char const*,struct f2fs_xattr_entry**,void**,int*) ; 
 int /*<<< orphan*/  FUNC5 (void*,char*,unsigned int) ; 
 unsigned int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct inode *inode, int index, const char *name,
		void *buffer, size_t buffer_size, struct page *ipage)
{
	struct f2fs_xattr_entry *entry = NULL;
	int error = 0;
	unsigned int size, len;
	void *base_addr = NULL;
	int base_size;

	if (name == NULL)
		return -EINVAL;

	len = FUNC6(name);
	if (len > F2FS_NAME_LEN)
		return -ERANGE;

	FUNC1(&FUNC0(inode)->i_xattr_sem);
	error = FUNC4(inode, ipage, index, len, name,
				&entry, &base_addr, &base_size);
	FUNC7(&FUNC0(inode)->i_xattr_sem);
	if (error)
		return error;

	size = FUNC3(entry->e_value_size);

	if (buffer && size > buffer_size) {
		error = -ERANGE;
		goto out;
	}

	if (buffer) {
		char *pval = entry->e_name + entry->e_name_len;

		if (base_size - (pval - (char *)base_addr) < size) {
			error = -ERANGE;
			goto out;
		}
		FUNC5(buffer, pval, size);
	}
	error = size;
out:
	FUNC2(base_addr);
	return error;
}