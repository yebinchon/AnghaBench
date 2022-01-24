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
struct ocfs2_filecheck_sysfs_entry {TYPE_1__* fs_fcheck; } ;
struct TYPE_2__ {unsigned int fc_size; unsigned int fc_done; unsigned int fc_max; int /*<<< orphan*/  fc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  ML_NOTICE ; 
 unsigned int OCFS2_FILECHECK_MAXSIZE ; 
 unsigned int OCFS2_FILECHECK_MINSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_filecheck_sysfs_entry*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct ocfs2_filecheck_sysfs_entry *ent,
			   unsigned int len)
{
	int ret;

	if ((len < OCFS2_FILECHECK_MINSIZE) || (len > OCFS2_FILECHECK_MAXSIZE))
		return -EINVAL;

	FUNC3(&ent->fs_fcheck->fc_lock);
	if (len < (ent->fs_fcheck->fc_size - ent->fs_fcheck->fc_done)) {
		FUNC1(ML_NOTICE,
		"Cannot set online file check maximum entry number "
		"to %u due to too many pending entries(%u)\n",
		len, ent->fs_fcheck->fc_size - ent->fs_fcheck->fc_done);
		ret = -EBUSY;
	} else {
		if (len < ent->fs_fcheck->fc_size)
			FUNC0(!FUNC2(ent,
				ent->fs_fcheck->fc_size - len));

		ent->fs_fcheck->fc_max = len;
		ret = 0;
	}
	FUNC4(&ent->fs_fcheck->fc_lock);

	return ret;
}