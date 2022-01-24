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
typedef  scalar_t__ u64 ;
struct timespec64 {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_mode; struct timespec64 i_mtime; } ;
struct fuse_inode {scalar_t__ attr_version; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; } ;
struct fuse_conn {int writeback_cache; scalar_t__ auto_inval_data; int /*<<< orphan*/  explicit_inval_data; } ;
struct fuse_attr {scalar_t__ size; int /*<<< orphan*/  mtimensec; int /*<<< orphan*/  mtime; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUSE_I_SIZE_UNSTABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct fuse_attr*,scalar_t__) ; 
 struct fuse_conn* FUNC2 (struct inode*) ; 
 struct fuse_inode* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct timespec64*,struct timespec64*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,scalar_t__) ; 

void FUNC11(struct inode *inode, struct fuse_attr *attr,
			    u64 attr_valid, u64 attr_version)
{
	struct fuse_conn *fc = FUNC2(inode);
	struct fuse_inode *fi = FUNC3(inode);
	bool is_wb = fc->writeback_cache;
	loff_t oldsize;
	struct timespec64 old_mtime;

	FUNC6(&fi->lock);
	if ((attr_version != 0 && fi->attr_version > attr_version) ||
	    FUNC8(FUSE_I_SIZE_UNSTABLE, &fi->state)) {
		FUNC7(&fi->lock);
		return;
	}

	old_mtime = inode->i_mtime;
	FUNC1(inode, attr, attr_valid);

	oldsize = inode->i_size;
	/*
	 * In case of writeback_cache enabled, the cached writes beyond EOF
	 * extend local i_size without keeping userspace server in sync. So,
	 * attr->size coming from server can be stale. We cannot trust it.
	 */
	if (!is_wb || !FUNC0(inode->i_mode))
		FUNC4(inode, attr->size);
	FUNC7(&fi->lock);

	if (!is_wb && FUNC0(inode->i_mode)) {
		bool inval = false;

		if (oldsize != attr->size) {
			FUNC10(inode, attr->size);
			if (!fc->explicit_inval_data)
				inval = true;
		} else if (fc->auto_inval_data) {
			struct timespec64 new_mtime = {
				.tv_sec = attr->mtime,
				.tv_nsec = attr->mtimensec,
			};

			/*
			 * Auto inval mode also checks and invalidates if mtime
			 * has changed.
			 */
			if (!FUNC9(&old_mtime, &new_mtime))
				inval = true;
		}

		if (inval)
			FUNC5(inode->i_mapping);
	}
}