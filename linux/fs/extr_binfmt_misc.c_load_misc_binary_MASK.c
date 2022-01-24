#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct linux_binprm {int interp_flags; int interp_data; int /*<<< orphan*/  buf; struct file* file; int /*<<< orphan*/  argc; int /*<<< orphan*/  interp; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  dentry; int /*<<< orphan*/  interpreter; int /*<<< orphan*/  interp_file; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 int /*<<< orphan*/  BINPRM_BUF_SIZE ; 
 int BINPRM_FLAGS_EXECFD ; 
 int BINPRM_FLAGS_PATH_INACCESSIBLE ; 
 int ENOENT ; 
 int ENOEXEC ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int MISC_FMT_CREDENTIALS ; 
 int MISC_FMT_OPEN_BINARY ; 
 int MISC_FMT_OPEN_FILE ; 
 int MISC_FMT_PRESERVE_ARGV0 ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct linux_binprm*) ; 
 TYPE_1__* FUNC4 (struct linux_binprm*) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,struct linux_binprm*) ; 
 int /*<<< orphan*/  FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  enabled ; 
 int /*<<< orphan*/  entries_lock ; 
 int /*<<< orphan*/  FUNC9 (int,struct file*) ; 
 struct file* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct file*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct file* FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (struct linux_binprm*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (struct linux_binprm*) ; 
 int FUNC21 (struct linux_binprm*) ; 
 int /*<<< orphan*/  FUNC22 (struct linux_binprm*,struct file*) ; 

__attribute__((used)) static int FUNC23(struct linux_binprm *bprm)
{
	Node *fmt;
	struct file *interp_file = NULL;
	int retval;
	int fd_binary = -1;

	retval = -ENOEXEC;
	if (!enabled)
		return retval;

	/* to keep locking time low, we copy the interpreter string */
	FUNC18(&entries_lock);
	fmt = FUNC4(bprm);
	if (fmt)
		FUNC7(fmt->dentry);
	FUNC19(&entries_lock);
	if (!fmt)
		return retval;

	/* Need to be able to load the file after exec */
	retval = -ENOENT;
	if (bprm->interp_flags & BINPRM_FLAGS_PATH_INACCESSIBLE)
		goto ret;

	if (!(fmt->flags & MISC_FMT_PRESERVE_ARGV0)) {
		retval = FUNC20(bprm);
		if (retval)
			goto ret;
	}

	if (fmt->flags & MISC_FMT_OPEN_BINARY) {

		/* if the binary should be opened on behalf of the
		 * interpreter than keep it open and assign descriptor
		 * to it
		 */
		fd_binary = FUNC12(0);
		if (fd_binary < 0) {
			retval = fd_binary;
			goto ret;
		}
		FUNC9(fd_binary, bprm->file);

		/* if the binary is not readable than enforce mm->dumpable=0
		   regardless of the interpreter's permissions */
		FUNC22(bprm, bprm->file);

		FUNC2(bprm->file);
		bprm->file = NULL;

		/* mark the bprm that fd should be passed to interp */
		bprm->interp_flags |= BINPRM_FLAGS_EXECFD;
		bprm->interp_data = fd_binary;

	} else {
		FUNC2(bprm->file);
		FUNC11(bprm->file);
		bprm->file = NULL;
	}
	/* make argv[1] be the path to the binary */
	retval = FUNC5(1, &bprm->interp, bprm);
	if (retval < 0)
		goto error;
	bprm->argc++;

	/* add the interp as argv[0] */
	retval = FUNC5(1, &fmt->interpreter, bprm);
	if (retval < 0)
		goto error;
	bprm->argc++;

	/* Update interp in case binfmt_script needs it. */
	retval = FUNC3(fmt->interpreter, bprm);
	if (retval < 0)
		goto error;

	if (fmt->flags & MISC_FMT_OPEN_FILE) {
		interp_file = FUNC10(fmt->interp_file);
		if (!FUNC0(interp_file))
			FUNC6(interp_file);
	} else {
		interp_file = FUNC16(fmt->interpreter);
	}
	retval = FUNC1(interp_file);
	if (FUNC0(interp_file))
		goto error;

	bprm->file = interp_file;
	if (fmt->flags & MISC_FMT_CREDENTIALS) {
		loff_t pos = 0;

		/*
		 * No need to call prepare_binprm(), it's already been
		 * done.  bprm->buf is stale, update from interp_file.
		 */
		FUNC15(bprm->buf, 0, BINPRM_BUF_SIZE);
		retval = FUNC13(bprm->file, bprm->buf, BINPRM_BUF_SIZE,
				&pos);
	} else
		retval = FUNC17(bprm);

	if (retval < 0)
		goto error;

	retval = FUNC21(bprm);
	if (retval < 0)
		goto error;

ret:
	FUNC8(fmt->dentry);
	return retval;
error:
	if (fd_binary > 0)
		FUNC14(fd_binary);
	bprm->interp_flags = 0;
	bprm->interp_data = 0;
	goto ret;
}