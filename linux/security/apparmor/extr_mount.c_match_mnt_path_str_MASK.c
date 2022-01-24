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
struct path {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * start; int /*<<< orphan*/  dfa; } ;
struct aa_profile {TYPE_1__ policy; int /*<<< orphan*/  disconnected; } ;
struct aa_perms {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t AA_CLASS_MOUNT ; 
 int /*<<< orphan*/  AA_MAY_MOUNT ; 
 int EACCES ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  OP_MOUNT ; 
 int /*<<< orphan*/  FUNC2 (struct aa_profile*,size_t) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (struct path const*,int /*<<< orphan*/ ,char*,char const**,char const**,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct aa_profile*,int /*<<< orphan*/ ,char const*,char const*,char const*,int /*<<< orphan*/ *,unsigned long,void*,int /*<<< orphan*/ ,struct aa_perms*,char const*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*,char const*,unsigned long,void*,int,struct aa_perms*) ; 
 char** mnt_info_table ; 
 int /*<<< orphan*/  FUNC7 (struct aa_profile*,struct path const*) ; 

__attribute__((used)) static int FUNC8(struct aa_profile *profile,
			      const struct path *mntpath, char *buffer,
			      const char *devname, const char *type,
			      unsigned long flags, void *data, bool binary,
			      const char *devinfo)
{
	struct aa_perms perms = { };
	const char *mntpnt = NULL, *info = NULL;
	int pos, error;

	FUNC0(!profile);
	FUNC0(!mntpath);
	FUNC0(!buffer);

	if (!FUNC2(profile, AA_CLASS_MOUNT))
		return 0;

	error = FUNC4(mntpath, FUNC7(profile, mntpath), buffer,
			     &mntpnt, &info, profile->disconnected);
	if (error)
		goto audit;
	if (FUNC1(devname)) {
		error = FUNC3(devname);
		devname = NULL;
		info = devinfo;
		goto audit;
	}

	error = -EACCES;
	pos = FUNC6(profile->policy.dfa,
			   profile->policy.start[AA_CLASS_MOUNT],
			   mntpnt, devname, type, flags, data, binary, &perms);
	if (pos) {
		info = mnt_info_table[pos];
		goto audit;
	}
	error = 0;

audit:
	return FUNC5(profile, OP_MOUNT, mntpnt, devname, type, NULL,
			   flags, data, AA_MAY_MOUNT, &perms, info, error);
}