#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {int /*<<< orphan*/  mnt_root; } ;
struct path {struct vfsmount* mnt; TYPE_2__* dentry; } ;
struct nameidata {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {TYPE_1__* d_op; int /*<<< orphan*/  d_flags; } ;
struct TYPE_4__ {int (* d_manage ) (struct path*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int DCACHE_MANAGED_DENTRY ; 
 unsigned int DCACHE_MANAGE_TRANSIT ; 
 unsigned int DCACHE_MOUNTED ; 
 unsigned int DCACHE_NEED_AUTOMOUNT ; 
 int EISDIR ; 
 int /*<<< orphan*/  LOOKUP_JUMPED ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (struct path*,struct nameidata*,int*) ; 
 struct vfsmount* FUNC5 (struct path*) ; 
 int /*<<< orphan*/  FUNC6 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC7 (struct path*,struct nameidata*) ; 
 int FUNC8 (struct path*,int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct path *path, struct nameidata *nd)
{
	struct vfsmount *mnt = path->mnt; /* held by caller, must be left alone */
	unsigned managed;
	bool need_mntput = false;
	int ret = 0;

	/* Given that we're not holding a lock here, we retain the value in a
	 * local variable for each dentry as we look at it so that we don't see
	 * the components of that value change under us */
	while (managed = FUNC1(path->dentry->d_flags),
	       managed &= DCACHE_MANAGED_DENTRY,
	       FUNC9(managed != 0)) {
		/* Allow the filesystem to manage the transit without i_mutex
		 * being held. */
		if (managed & DCACHE_MANAGE_TRANSIT) {
			FUNC0(!path->dentry->d_op);
			FUNC0(!path->dentry->d_op->d_manage);
			ret = path->dentry->d_op->d_manage(path, false);
			if (ret < 0)
				break;
		}

		/* Transit to a mounted filesystem. */
		if (managed & DCACHE_MOUNTED) {
			struct vfsmount *mounted = FUNC5(path);
			if (mounted) {
				FUNC3(path->dentry);
				if (need_mntput)
					FUNC6(path->mnt);
				path->mnt = mounted;
				path->dentry = FUNC2(mounted->mnt_root);
				need_mntput = true;
				continue;
			}

			/* Something is mounted on this dentry in another
			 * namespace and/or whatever was mounted there in this
			 * namespace got unmounted before lookup_mnt() could
			 * get it */
		}

		/* Handle an automount point */
		if (managed & DCACHE_NEED_AUTOMOUNT) {
			ret = FUNC4(path, nd, &need_mntput);
			if (ret < 0)
				break;
			continue;
		}

		/* We didn't change the current path point */
		break;
	}

	if (need_mntput && path->mnt == mnt)
		FUNC6(path->mnt);
	if (ret == -EISDIR || !ret)
		ret = 1;
	if (need_mntput)
		nd->flags |= LOOKUP_JUMPED;
	if (FUNC9(ret < 0))
		FUNC7(path, nd);
	return ret;
}