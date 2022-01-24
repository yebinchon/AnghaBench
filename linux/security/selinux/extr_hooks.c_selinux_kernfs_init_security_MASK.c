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
typedef  int /*<<< orphan*/  u16 ;
struct task_security_struct {int /*<<< orphan*/  sid; scalar_t__ create_sid; } ;
struct qstr {int /*<<< orphan*/  hash_len; int /*<<< orphan*/  name; } ;
struct kernfs_node {int /*<<< orphan*/  name; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int ENODATA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  XATTR_CREATE ; 
 int /*<<< orphan*/  XATTR_NAME_SELINUX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kernfs_node*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC4 (struct kernfs_node*,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__,char**,scalar_t__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct qstr*,scalar_t__*) ; 
 struct task_security_struct* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  selinux_state ; 

__attribute__((used)) static int FUNC11(struct kernfs_node *kn_dir,
					struct kernfs_node *kn)
{
	const struct task_security_struct *tsec = FUNC10(FUNC0());
	u32 parent_sid, newsid, clen;
	int rc;
	char *context;

	rc = FUNC3(kn_dir, XATTR_NAME_SELINUX, NULL, 0);
	if (rc == -ENODATA)
		return 0;
	else if (rc < 0)
		return rc;

	clen = (u32)rc;
	context = FUNC6(clen, GFP_KERNEL);
	if (!context)
		return -ENOMEM;

	rc = FUNC3(kn_dir, XATTR_NAME_SELINUX, context, clen);
	if (rc < 0) {
		FUNC5(context);
		return rc;
	}

	rc = FUNC7(&selinux_state, context, clen, &parent_sid,
				     GFP_KERNEL);
	FUNC5(context);
	if (rc)
		return rc;

	if (tsec->create_sid) {
		newsid = tsec->create_sid;
	} else {
		u16 secclass = FUNC2(kn->mode);
		struct qstr q;

		q.name = kn->name;
		q.hash_len = FUNC1(kn_dir, kn->name);

		rc = FUNC9(&selinux_state, tsec->sid,
					     parent_sid, secclass, &q,
					     &newsid);
		if (rc)
			return rc;
	}

	rc = FUNC8(&selinux_state, newsid,
					   &context, &clen);
	if (rc)
		return rc;

	rc = FUNC4(kn, XATTR_NAME_SELINUX, context, clen,
			      XATTR_CREATE);
	FUNC5(context);
	return rc;
}