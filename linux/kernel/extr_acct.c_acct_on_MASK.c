#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct vfsmount* mnt; } ;
struct vfsmount {int f_mode; TYPE_1__ f_path; } ;
struct pid_namespace {int /*<<< orphan*/  bacct; } ;
struct fs_pin {int dummy; } ;
struct filename {int dummy; } ;
struct file {int f_mode; TYPE_1__ f_path; } ;
struct bsd_acct_struct {int /*<<< orphan*/  lock; int /*<<< orphan*/  pin; int /*<<< orphan*/  done; int /*<<< orphan*/  work; struct pid_namespace* ns; int /*<<< orphan*/  needcheck; struct vfsmount* file; int /*<<< orphan*/  count; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int EACCES ; 
 int EIO ; 
 int ENOMEM ; 
 int FMODE_CAN_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct vfsmount*) ; 
 int O_APPEND ; 
 int O_LARGEFILE ; 
 int O_WRONLY ; 
 int FUNC2 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vfsmount*) ; 
 int FUNC5 (struct vfsmount*) ; 
 int /*<<< orphan*/  acct_pin_kill ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  close_work ; 
 int /*<<< orphan*/  current ; 
 TYPE_2__* FUNC7 (struct vfsmount*) ; 
 struct vfsmount* FUNC8 (struct filename*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vfsmount*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC12 (struct bsd_acct_struct*) ; 
 struct bsd_acct_struct* FUNC13 (int,int /*<<< orphan*/ ) ; 
 struct vfsmount* FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC20 (struct fs_pin*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 struct pid_namespace* FUNC22 (int /*<<< orphan*/ ) ; 
 struct fs_pin* FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC24(struct filename *pathname)
{
	struct file *file;
	struct vfsmount *mnt, *internal;
	struct pid_namespace *ns = FUNC22(current);
	struct bsd_acct_struct *acct;
	struct fs_pin *old;
	int err;

	acct = FUNC13(sizeof(struct bsd_acct_struct), GFP_KERNEL);
	if (!acct)
		return -ENOMEM;

	/* Difference from BSD - they don't do O_APPEND */
	file = FUNC8(pathname, O_WRONLY|O_APPEND|O_LARGEFILE, 0);
	if (FUNC1(file)) {
		FUNC12(acct);
		return FUNC2(file);
	}

	if (!FUNC3(FUNC7(file)->i_mode)) {
		FUNC12(acct);
		FUNC9(file, NULL);
		return -EACCES;
	}

	if (!(file->f_mode & FMODE_CAN_WRITE)) {
		FUNC12(acct);
		FUNC9(file, NULL);
		return -EIO;
	}
	internal = FUNC14(&file->f_path);
	if (FUNC1(internal)) {
		FUNC12(acct);
		FUNC9(file, NULL);
		return FUNC2(internal);
	}
	err = FUNC5(internal);
	if (err) {
		FUNC15(internal);
		FUNC12(acct);
		FUNC9(file, NULL);
		return err;
	}
	mnt = file->f_path.mnt;
	file->f_path.mnt = internal;

	FUNC6(&acct->count, 1);
	FUNC11(&acct->pin, acct_pin_kill);
	acct->file = file;
	acct->needcheck = jiffies;
	acct->ns = ns;
	FUNC16(&acct->lock);
	FUNC0(&acct->work, close_work);
	FUNC10(&acct->done);
	FUNC17(&acct->lock, 1);	/* nobody has seen it yet */
	FUNC19(&acct->pin, mnt);

	FUNC21();
	old = FUNC23(&ns->bacct, &acct->pin);
	FUNC18(&acct->lock);
	FUNC20(old);
	FUNC4(mnt);
	FUNC15(mnt);
	return 0;
}