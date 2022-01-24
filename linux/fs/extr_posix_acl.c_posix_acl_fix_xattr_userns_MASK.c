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
struct user_namespace {int dummy; } ;
struct posix_acl_xattr_header {scalar_t__ a_version; } ;
struct posix_acl_xattr_entry {scalar_t__ e_id; int /*<<< orphan*/  e_tag; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
#define  ACL_GROUP 129 
#define  ACL_USER 128 
 int /*<<< orphan*/  POSIX_ACL_XATTR_VERSION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int FUNC7 (size_t) ; 

__attribute__((used)) static void FUNC8(
	struct user_namespace *to, struct user_namespace *from,
	void *value, size_t size)
{
	struct posix_acl_xattr_header *header = value;
	struct posix_acl_xattr_entry *entry = (void *)(header + 1), *end;
	int count;
	kuid_t uid;
	kgid_t gid;

	if (!value)
		return;
	if (size < sizeof(struct posix_acl_xattr_header))
		return;
	if (header->a_version != FUNC0(POSIX_ACL_XATTR_VERSION))
		return;

	count = FUNC7(size);
	if (count < 0)
		return;
	if (count == 0)
		return;

	for (end = entry + count; entry != end; entry++) {
		switch(FUNC3(entry->e_tag)) {
		case ACL_USER:
			uid = FUNC6(from, FUNC4(entry->e_id));
			entry->e_id = FUNC0(FUNC2(to, uid));
			break;
		case ACL_GROUP:
			gid = FUNC5(from, FUNC4(entry->e_id));
			entry->e_id = FUNC0(FUNC1(to, gid));
			break;
		default:
			break;
		}
	}
}