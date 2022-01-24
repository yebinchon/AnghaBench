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
struct super_block {int dummy; } ;
struct mount_options {int mount_opt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  OCFS2_FEATURE_INCOMPAT_XATTR ; 
 int /*<<< orphan*/  OCFS2_FEATURE_RO_COMPAT_GRPQUOTA ; 
 int /*<<< orphan*/  OCFS2_FEATURE_RO_COMPAT_USRQUOTA ; 
 scalar_t__ FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 int OCFS2_MOUNT_GRPQUOTA ; 
 int OCFS2_MOUNT_NO_POSIX_ACL ; 
 int OCFS2_MOUNT_POSIX_ACL ; 
 int OCFS2_MOUNT_USRQUOTA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct super_block *sb,
				   struct mount_options *options)
{
	if (options->mount_opt & OCFS2_MOUNT_USRQUOTA &&
	    !FUNC1(sb,
					 OCFS2_FEATURE_RO_COMPAT_USRQUOTA)) {
		FUNC2(ML_ERROR, "User quotas were requested, but this "
		     "filesystem does not have the feature enabled.\n");
		return 0;
	}
	if (options->mount_opt & OCFS2_MOUNT_GRPQUOTA &&
	    !FUNC1(sb,
					 OCFS2_FEATURE_RO_COMPAT_GRPQUOTA)) {
		FUNC2(ML_ERROR, "Group quotas were requested, but this "
		     "filesystem does not have the feature enabled.\n");
		return 0;
	}
	if (options->mount_opt & OCFS2_MOUNT_POSIX_ACL &&
	    !FUNC0(sb, OCFS2_FEATURE_INCOMPAT_XATTR)) {
		FUNC2(ML_ERROR, "ACL support requested but extended attributes "
		     "feature is not enabled\n");
		return 0;
	}
	/* No ACL setting specified? Use XATTR feature... */
	if (!(options->mount_opt & (OCFS2_MOUNT_POSIX_ACL |
				    OCFS2_MOUNT_NO_POSIX_ACL))) {
		if (FUNC0(sb, OCFS2_FEATURE_INCOMPAT_XATTR))
			options->mount_opt |= OCFS2_MOUNT_POSIX_ACL;
		else
			options->mount_opt |= OCFS2_MOUNT_NO_POSIX_ACL;
	}
	return 1;
}