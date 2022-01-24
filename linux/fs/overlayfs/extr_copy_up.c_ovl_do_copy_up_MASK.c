#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct ovl_fs {scalar_t__ tmpfile; } ;
struct TYPE_15__ {int /*<<< orphan*/  name; } ;
struct TYPE_12__ {int nlink; int /*<<< orphan*/  mode; } ;
struct TYPE_11__ {int /*<<< orphan*/  dentry; } ;
struct ovl_copy_up_ctx {int indexed; int origin; TYPE_8__ destname; TYPE_3__* dentry; int /*<<< orphan*/  pstat; TYPE_3__* destdir; TYPE_2__ stat; int /*<<< orphan*/  parent; TYPE_1__ lowerpath; void* workdir; } ;
struct inode {int dummy; } ;
struct TYPE_14__ {struct ovl_fs* s_fs_info; } ;
struct TYPE_13__ {TYPE_7__* d_sb; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  OVL_INDEX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 struct inode* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ovl_copy_up_ctx*) ; 
 int FUNC8 (struct ovl_copy_up_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 void* FUNC11 (TYPE_7__*) ; 
 scalar_t__ FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct inode*) ; 
 int FUNC14 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct ovl_copy_up_ctx *c)
{
	int err;
	struct ovl_fs *ofs = c->dentry->d_sb->s_fs_info;
	bool to_index = false;

	/*
	 * Indexed non-dir is copied up directly to the index entry and then
	 * hardlinked to upper dir. Indexed dir is copied up to indexdir,
	 * then index entry is created and then copied up dir installed.
	 * Copying dir up to indexdir instead of workdir simplifies locking.
	 */
	if (FUNC12(c->dentry)) {
		c->indexed = true;
		if (FUNC0(c->stat.mode))
			c->workdir = FUNC11(c->dentry->d_sb);
		else
			to_index = true;
	}

	if (FUNC0(c->stat.mode) || c->stat.nlink == 1 || to_index)
		c->origin = true;

	if (to_index) {
		c->destdir = FUNC11(c->dentry->d_sb);
		err = FUNC10(c->lowerpath.dentry, &c->destname);
		if (err)
			return err;
	} else if (FUNC2(!c->parent)) {
		/* Disconnected dentry must be copied up to index dir */
		return -EIO;
	} else {
		/*
		 * Mark parent "impure" because it may now contain non-pure
		 * upper
		 */
		err = FUNC14(c->parent, c->destdir);
		if (err)
			return err;
	}

	/* Should we copyup with O_TMPFILE or with workdir? */
	if (FUNC1(c->stat.mode) && ofs->tmpfile)
		err = FUNC7(c);
	else
		err = FUNC8(c);
	if (err)
		goto out;

	if (c->indexed)
		FUNC13(OVL_INDEX, FUNC3(c->dentry));

	if (to_index) {
		/* Initialize nlink for copy up of disconnected dentry */
		err = FUNC15(c->dentry);
	} else {
		struct inode *udir = FUNC3(c->destdir);

		/* Restore timestamps on parent (best effort) */
		FUNC4(udir);
		FUNC16(c->destdir, &c->pstat);
		FUNC5(udir);

		FUNC9(c->dentry);
	}

out:
	if (to_index)
		FUNC6(c->destname.name);
	return err;
}