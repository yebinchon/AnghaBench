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
struct posix_acl {TYPE_1__* a_entries; } ;
struct f2fs_acl_header {scalar_t__ a_version; } ;
struct f2fs_acl_entry_short {int dummy; } ;
struct f2fs_acl_entry {int /*<<< orphan*/  e_id; int /*<<< orphan*/  e_perm; int /*<<< orphan*/  e_tag; } ;
struct TYPE_2__ {int e_tag; int /*<<< orphan*/  e_gid; int /*<<< orphan*/  e_uid; void* e_perm; } ;

/* Variables and functions */
#define  ACL_GROUP 133 
#define  ACL_GROUP_OBJ 132 
#define  ACL_MASK 131 
#define  ACL_OTHER 130 
#define  ACL_USER 129 
#define  ACL_USER_OBJ 128 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct posix_acl* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F2FS_ACL_VERSION ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (size_t) ; 
 int /*<<< orphan*/  init_user_ns ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct posix_acl*) ; 

__attribute__((used)) static struct posix_acl *FUNC9(const char *value, size_t size)
{
	int i, count;
	struct posix_acl *acl;
	struct f2fs_acl_header *hdr = (struct f2fs_acl_header *)value;
	struct f2fs_acl_entry *entry = (struct f2fs_acl_entry *)(hdr + 1);
	const char *end = value + size;

	if (size < sizeof(struct f2fs_acl_header))
		return FUNC0(-EINVAL);

	if (hdr->a_version != FUNC1(F2FS_ACL_VERSION))
		return FUNC0(-EINVAL);

	count = FUNC2(size);
	if (count < 0)
		return FUNC0(-EINVAL);
	if (count == 0)
		return NULL;

	acl = FUNC7(count, GFP_NOFS);
	if (!acl)
		return FUNC0(-ENOMEM);

	for (i = 0; i < count; i++) {

		if ((char *)entry > end)
			goto fail;

		acl->a_entries[i].e_tag  = FUNC3(entry->e_tag);
		acl->a_entries[i].e_perm = FUNC3(entry->e_perm);

		switch (acl->a_entries[i].e_tag) {
		case ACL_USER_OBJ:
		case ACL_GROUP_OBJ:
		case ACL_MASK:
		case ACL_OTHER:
			entry = (struct f2fs_acl_entry *)((char *)entry +
					sizeof(struct f2fs_acl_entry_short));
			break;

		case ACL_USER:
			acl->a_entries[i].e_uid =
				FUNC6(&init_user_ns,
						FUNC4(entry->e_id));
			entry = (struct f2fs_acl_entry *)((char *)entry +
					sizeof(struct f2fs_acl_entry));
			break;
		case ACL_GROUP:
			acl->a_entries[i].e_gid =
				FUNC5(&init_user_ns,
						FUNC4(entry->e_id));
			entry = (struct f2fs_acl_entry *)((char *)entry +
					sizeof(struct f2fs_acl_entry));
			break;
		default:
			goto fail;
		}
	}
	if ((char *)entry != end)
		goto fail;
	return acl;
fail:
	FUNC8(acl);
	return FUNC0(-EINVAL);
}