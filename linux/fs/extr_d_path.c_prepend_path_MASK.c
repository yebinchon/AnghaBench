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
struct vfsmount {struct dentry* mnt_root; } ;
struct path {struct vfsmount* mnt; struct dentry* dentry; } ;
struct mount {int /*<<< orphan*/  mnt_ns; struct vfsmount mnt; int /*<<< orphan*/  mnt_mountpoint; int /*<<< orphan*/  mnt_parent; } ;
struct dentry {int /*<<< orphan*/  d_name; struct dentry* d_parent; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct vfsmount*) ; 
 int /*<<< orphan*/  mount_lock ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int FUNC7 (char**,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned int*) ; 
 struct mount* FUNC11 (struct vfsmount*) ; 
 int /*<<< orphan*/  rename_lock ; 

__attribute__((used)) static int FUNC12(const struct path *path,
			const struct path *root,
			char **buffer, int *buflen)
{
	struct dentry *dentry;
	struct vfsmount *vfsmnt;
	struct mount *mnt;
	int error = 0;
	unsigned seq, m_seq = 0;
	char *bptr;
	int blen;

	FUNC8();
restart_mnt:
	FUNC10(&mount_lock, &m_seq);
	seq = 0;
	FUNC8();
restart:
	bptr = *buffer;
	blen = *buflen;
	error = 0;
	dentry = path->dentry;
	vfsmnt = path->mnt;
	mnt = FUNC11(vfsmnt);
	FUNC10(&rename_lock, &seq);
	while (dentry != root->dentry || vfsmnt != root->mnt) {
		struct dentry * parent;

		if (dentry == vfsmnt->mnt_root || FUNC0(dentry)) {
			struct mount *parent = FUNC1(mnt->mnt_parent);
			/* Escaped? */
			if (dentry != vfsmnt->mnt_root) {
				bptr = *buffer;
				blen = *buflen;
				error = 3;
				break;
			}
			/* Global root? */
			if (mnt != parent) {
				dentry = FUNC1(mnt->mnt_mountpoint);
				mnt = parent;
				vfsmnt = &mnt->mnt;
				continue;
			}
			if (FUNC4(vfsmnt) && !FUNC3(mnt->mnt_ns))
				error = 1;	// absolute root
			else
				error = 2;	// detached or not attached yet
			break;
		}
		parent = dentry->d_parent;
		FUNC6(parent);
		error = FUNC7(&bptr, &blen, &dentry->d_name);
		if (error)
			break;

		dentry = parent;
	}
	if (!(seq & 1))
		FUNC9();
	if (FUNC5(&rename_lock, seq)) {
		seq = 1;
		goto restart;
	}
	FUNC2(&rename_lock, seq);

	if (!(m_seq & 1))
		FUNC9();
	if (FUNC5(&mount_lock, m_seq)) {
		m_seq = 1;
		goto restart_mnt;
	}
	FUNC2(&mount_lock, m_seq);

	if (error >= 0 && bptr == *buffer) {
		if (--blen < 0)
			error = -ENAMETOOLONG;
		else
			*--bptr = '/';
	}
	*buffer = bptr;
	*buflen = blen;
	return error;
}