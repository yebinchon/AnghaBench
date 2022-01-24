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
struct super_block {int /*<<< orphan*/  s_flags; int /*<<< orphan*/  s_xattr; struct dentry* s_root; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_mount_opt; struct dentry* xattr_root; struct dentry* priv_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  REISERFS_POSIXACL ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  REISERFS_XATTRS_USER ; 
 int /*<<< orphan*/  SB_POSIXACL ; 
 int SB_RDONLY ; 
 int /*<<< orphan*/  XAROOT_NAME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 scalar_t__ FUNC6 (struct dentry*) ; 
 scalar_t__ FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC10 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct super_block*) ; 
 int /*<<< orphan*/  reiserfs_xattr_handlers ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct super_block*) ; 

int FUNC14(struct super_block *s, int mount_flags)
{
	int err = 0;
	struct dentry *privroot = FUNC2(s)->priv_root;

	err = FUNC13(s);
	if (err)
		goto error;

	if (FUNC6(privroot) && !(mount_flags & SB_RDONLY)) {
		FUNC8(FUNC5(s->s_root));
		err = FUNC4(FUNC2(s)->priv_root);
		FUNC9(FUNC5(s->s_root));
	}

	if (FUNC7(privroot)) {
		s->s_xattr = reiserfs_xattr_handlers;
		FUNC8(FUNC5(privroot));
		if (!FUNC2(s)->xattr_root) {
			struct dentry *dentry;

			dentry = FUNC10(XAROOT_NAME, privroot,
						FUNC12(XAROOT_NAME));
			if (!FUNC0(dentry))
				FUNC2(s)->xattr_root = dentry;
			else
				err = FUNC1(dentry);
		}
		FUNC9(FUNC5(privroot));
	}

error:
	if (err) {
		FUNC3(REISERFS_XATTRS_USER, &FUNC2(s)->s_mount_opt);
		FUNC3(REISERFS_POSIXACL, &FUNC2(s)->s_mount_opt);
	}

	/* The super_block SB_POSIXACL must mirror the (no)acl mount option. */
	if (FUNC11(s))
		s->s_flags |= SB_POSIXACL;
	else
		s->s_flags &= ~SB_POSIXACL;

	return err;
}