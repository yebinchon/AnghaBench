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
typedef  int u32 ;
struct ocfs2_super {int s_mount_opt; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int OCFS2_MOUNT_HB_GLOBAL ; 
 int OCFS2_MOUNT_HB_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_super*) ; 
 scalar_t__ FUNC3 (struct ocfs2_super*) ; 
 scalar_t__ FUNC4 (struct ocfs2_super*) ; 

__attribute__((used)) static int FUNC5(struct ocfs2_super *osb)
{
	u32 hb_enabled = OCFS2_MOUNT_HB_LOCAL | OCFS2_MOUNT_HB_GLOBAL;

	if (osb->s_mount_opt & hb_enabled) {
		if (FUNC3(osb)) {
			FUNC0(ML_ERROR, "Cannot heartbeat on a locally "
			     "mounted device.\n");
			return -EINVAL;
		}
		if (FUNC4(osb)) {
			FUNC0(ML_ERROR, "Userspace stack expected, but "
			     "o2cb heartbeat arguments passed to mount\n");
			return -EINVAL;
		}
		if (((osb->s_mount_opt & OCFS2_MOUNT_HB_GLOBAL) &&
		     !FUNC1(osb)) ||
		    ((osb->s_mount_opt & OCFS2_MOUNT_HB_LOCAL) &&
		     FUNC1(osb))) {
			FUNC0(ML_ERROR, "Mismatching o2cb heartbeat modes\n");
			return -EINVAL;
		}
	}

	if (!(osb->s_mount_opt & hb_enabled)) {
		if (!FUNC3(osb) && !FUNC2(osb) &&
		    !FUNC4(osb)) {
			FUNC0(ML_ERROR, "Heartbeat has to be started to mount "
			     "a read-write clustered device.\n");
			return -EINVAL;
		}
	}

	return 0;
}