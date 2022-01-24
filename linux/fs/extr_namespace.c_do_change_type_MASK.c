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
struct path {scalar_t__ dentry; TYPE_1__* mnt; } ;
struct mount {int dummy; } ;
struct TYPE_2__ {scalar_t__ mnt_root; } ;

/* Variables and functions */
 int EINVAL ; 
 int MS_REC ; 
 int MS_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct mount*,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct mount*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct mount* FUNC6 (struct mount*,struct mount*) ; 
 struct mount* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct path *path, int ms_flags)
{
	struct mount *m;
	struct mount *mnt = FUNC7(path->mnt);
	int recurse = ms_flags & MS_REC;
	int type;
	int err = 0;

	if (path->dentry != path->mnt->mnt_root)
		return -EINVAL;

	type = FUNC1(ms_flags);
	if (!type)
		return -EINVAL;

	FUNC4();
	if (type == MS_SHARED) {
		err = FUNC2(mnt, recurse);
		if (err)
			goto out_unlock;
	}

	FUNC3();
	for (m = mnt; m; m = (recurse ? FUNC6(m, mnt) : NULL))
		FUNC0(m, type);
	FUNC8();

 out_unlock:
	FUNC5();
	return err;
}