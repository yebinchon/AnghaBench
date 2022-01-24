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
struct path {int /*<<< orphan*/  mnt; int /*<<< orphan*/  dentry; } ;
struct mountpoint {int dummy; } ;
typedef  struct mountpoint mount ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct mountpoint*) ; 
 int LOOKUP_AUTOMOUNT ; 
 int LOOKUP_FOLLOW ; 
 int FUNC1 (struct mountpoint*) ; 
 int /*<<< orphan*/  UMOUNT_SYNC ; 
 struct mountpoint* FUNC2 (struct path*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mountpoint*) ; 
 int FUNC4 (struct mountpoint*,struct mountpoint*,struct mountpoint*) ; 
 int FUNC5 (char const*,int,struct path*) ; 
 struct mountpoint* FUNC6 (struct path*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct path*) ; 
 struct mountpoint* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mountpoint*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mountpoint*) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static int FUNC14(struct path *path, const char *old_name,
				int recurse)
{
	struct path old_path;
	struct mount *mnt = NULL, *parent;
	struct mountpoint *mp;
	int err;
	if (!old_name || !*old_name)
		return -EINVAL;
	err = FUNC5(old_name, LOOKUP_FOLLOW|LOOKUP_AUTOMOUNT, &old_path);
	if (err)
		return err;

	err = -EINVAL;
	if (FUNC8(old_path.dentry))
		goto out;

	mp = FUNC6(path);
	if (FUNC0(mp)) {
		err = FUNC1(mp);
		goto out;
	}

	parent = FUNC10(path->mnt);
	if (!FUNC3(parent))
		goto out2;

	mnt = FUNC2(&old_path, recurse);
	if (FUNC0(mnt)) {
		err = FUNC1(mnt);
		goto out2;
	}

	err = FUNC4(mnt, parent, mp);
	if (err) {
		FUNC7();
		FUNC11(mnt, UMOUNT_SYNC);
		FUNC13();
	}
out2:
	FUNC12(mp);
out:
	FUNC9(&old_path);
	return err;
}