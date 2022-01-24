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
struct xattr_handler {char* name; int /*<<< orphan*/  prefix; scalar_t__ (* list ) (struct dentry*) ;} ;
struct ext4_xattr_entry {size_t e_name_len; char const* e_name; int /*<<< orphan*/  e_name_index; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ERANGE ; 
 struct ext4_xattr_entry* FUNC0 (struct ext4_xattr_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct ext4_xattr_entry*) ; 
 struct xattr_handler* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 size_t FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (struct dentry*) ; 

__attribute__((used)) static int
FUNC6(struct dentry *dentry, struct ext4_xattr_entry *entry,
			char *buffer, size_t buffer_size)
{
	size_t rest = buffer_size;

	for (; !FUNC1(entry); entry = FUNC0(entry)) {
		const struct xattr_handler *handler =
			FUNC2(entry->e_name_index);

		if (handler && (!handler->list || handler->list(dentry))) {
			const char *prefix = handler->prefix ?: handler->name;
			size_t prefix_len = FUNC4(prefix);
			size_t size = prefix_len + entry->e_name_len + 1;

			if (buffer) {
				if (size > rest)
					return -ERANGE;
				FUNC3(buffer, prefix, prefix_len);
				buffer += prefix_len;
				FUNC3(buffer, entry->e_name, entry->e_name_len);
				buffer += entry->e_name_len;
				*buffer++ = 0;
			}
			rest -= size;
		}
	}
	return buffer_size - rest;  /* total size */
}