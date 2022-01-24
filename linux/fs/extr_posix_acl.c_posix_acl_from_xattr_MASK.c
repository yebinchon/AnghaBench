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
struct posix_acl_xattr_entry {int /*<<< orphan*/  e_id; int /*<<< orphan*/  e_perm; int /*<<< orphan*/  e_tag; } ;
struct posix_acl_entry {int e_tag; int /*<<< orphan*/  e_gid; int /*<<< orphan*/  e_uid; void* e_perm; } ;
struct posix_acl {struct posix_acl_entry* a_entries; } ;

/* Variables and functions */
#define  ACL_GROUP 133 
#define  ACL_GROUP_OBJ 132 
#define  ACL_MASK 131 
#define  ACL_OTHER 130 
#define  ACL_USER 129 
#define  ACL_USER_OBJ 128 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 struct posix_acl* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  POSIX_ACL_XATTR_VERSION ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct posix_acl*) ; 
 int FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

struct posix_acl *
FUNC11(struct user_namespace *user_ns,
		     const void *value, size_t size)
{
	const struct posix_acl_xattr_header *header = value;
	const struct posix_acl_xattr_entry *entry = (const void *)(header + 1), *end;
	int count;
	struct posix_acl *acl;
	struct posix_acl_entry *acl_e;

	if (!value)
		return NULL;
	if (size < sizeof(struct posix_acl_xattr_header))
		 return FUNC0(-EINVAL);
	if (header->a_version != FUNC1(POSIX_ACL_XATTR_VERSION))
		return FUNC0(-EOPNOTSUPP);

	count = FUNC9(size);
	if (count < 0)
		return FUNC0(-EINVAL);
	if (count == 0)
		return NULL;
	
	acl = FUNC7(count, GFP_NOFS);
	if (!acl)
		return FUNC0(-ENOMEM);
	acl_e = acl->a_entries;
	
	for (end = entry + count; entry != end; acl_e++, entry++) {
		acl_e->e_tag  = FUNC3(entry->e_tag);
		acl_e->e_perm = FUNC3(entry->e_perm);

		switch(acl_e->e_tag) {
			case ACL_USER_OBJ:
			case ACL_GROUP_OBJ:
			case ACL_MASK:
			case ACL_OTHER:
				break;

			case ACL_USER:
				acl_e->e_uid =
					FUNC6(user_ns,
						  FUNC4(entry->e_id));
				if (!FUNC10(acl_e->e_uid))
					goto fail;
				break;
			case ACL_GROUP:
				acl_e->e_gid =
					FUNC5(user_ns,
						  FUNC4(entry->e_id));
				if (!FUNC2(acl_e->e_gid))
					goto fail;
				break;

			default:
				goto fail;
		}
	}
	return acl;

fail:
	FUNC8(acl);
	return FUNC0(-EINVAL);
}