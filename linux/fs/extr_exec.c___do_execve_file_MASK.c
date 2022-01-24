#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct user_arg_ptr {int dummy; } ;
struct linux_binprm {char* filename; char* interp; scalar_t__ mm; struct filename* file; int /*<<< orphan*/  argc; int /*<<< orphan*/  envc; int /*<<< orphan*/  p; int /*<<< orphan*/  exec; int /*<<< orphan*/  interp_flags; } ;
struct files_struct {int dummy; } ;
struct filename {char* name; } ;
struct file {char* name; } ;
struct TYPE_11__ {int /*<<< orphan*/  processes; } ;
struct TYPE_10__ {int flags; int in_execve; TYPE_2__* fs; TYPE_1__* files; } ;
struct TYPE_9__ {scalar_t__ in_exec; } ;
struct TYPE_8__ {int /*<<< orphan*/  fdt; } ;

/* Variables and functions */
 int AT_FDCWD ; 
 int /*<<< orphan*/  BINPRM_FLAGS_PATH_INACCESSIBLE ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct filename*) ; 
 int PF_NPROC_EXCEEDED ; 
 int FUNC1 (struct filename*) ; 
 int /*<<< orphan*/  RLIMIT_NPROC ; 
 int /*<<< orphan*/  FUNC2 (struct linux_binprm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct linux_binprm*) ; 
 int /*<<< orphan*/  FUNC6 (struct linux_binprm*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct user_arg_ptr,struct linux_binprm*) ; 
 int FUNC9 (int,char**,struct linux_binprm*) ; 
 TYPE_3__* current ; 
 TYPE_5__* FUNC10 () ; 
 struct filename* FUNC11 (int,struct filename*,int) ; 
 int FUNC12 (struct linux_binprm*) ; 
 int /*<<< orphan*/  FUNC13 (struct linux_binprm*) ; 
 char* FUNC14 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 struct linux_binprm* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int FUNC18 (struct linux_binprm*,struct user_arg_ptr,struct user_arg_ptr) ; 
 int FUNC19 (struct linux_binprm*) ; 
 int FUNC20 (struct linux_binprm*) ; 
 int /*<<< orphan*/  FUNC21 (struct files_struct*) ; 
 int /*<<< orphan*/  FUNC22 (struct filename*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct files_struct*) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (TYPE_3__*,int) ; 
 int FUNC29 (struct files_struct**) ; 
 int /*<<< orphan*/  FUNC30 (struct linux_binprm*,struct filename*) ; 

__attribute__((used)) static int FUNC31(int fd, struct filename *filename,
			    struct user_arg_ptr argv,
			    struct user_arg_ptr envp,
			    int flags, struct file *file)
{
	char *pathbuf = NULL;
	struct linux_binprm *bprm;
	struct files_struct *displaced;
	int retval;

	if (FUNC0(filename))
		return FUNC1(filename);

	/*
	 * We move the actual failure in case of RLIMIT_NPROC excess from
	 * set*uid() to execve() because too many poorly written programs
	 * don't check setuid() return code.  Here we additionally recheck
	 * whether NPROC limit is still exceeded.
	 */
	if ((current->flags & PF_NPROC_EXCEEDED) &&
	    FUNC4(&FUNC10()->processes) > FUNC25(RLIMIT_NPROC)) {
		retval = -EAGAIN;
		goto out_ret;
	}

	/* We're below the limit (still or again), so we don't want to make
	 * further execve() calls fail. */
	current->flags &= ~PF_NPROC_EXCEEDED;

	retval = FUNC29(&displaced);
	if (retval)
		goto out_ret;

	retval = -ENOMEM;
	bprm = FUNC16(sizeof(*bprm), GFP_KERNEL);
	if (!bprm)
		goto out_files;

	retval = FUNC20(bprm);
	if (retval)
		goto out_free;

	FUNC6(bprm);
	current->in_execve = 1;

	if (!file)
		file = FUNC11(fd, filename, flags);
	retval = FUNC1(file);
	if (FUNC0(file))
		goto out_unmark;

	FUNC27();

	bprm->file = file;
	if (!filename) {
		bprm->filename = "none";
	} else if (fd == AT_FDCWD || filename->name[0] == '/') {
		bprm->filename = filename->name;
	} else {
		if (filename->name[0] == '\0')
			pathbuf = FUNC14(GFP_KERNEL, "/dev/fd/%d", fd);
		else
			pathbuf = FUNC14(GFP_KERNEL, "/dev/fd/%d/%s",
					    fd, filename->name);
		if (!pathbuf) {
			retval = -ENOMEM;
			goto out_unmark;
		}
		/*
		 * Record that a name derived from an O_CLOEXEC fd will be
		 * inaccessible after exec. Relies on having exclusive access to
		 * current->files (due to unshare_files above).
		 */
		if (FUNC7(fd, FUNC23(current->files->fdt)))
			bprm->interp_flags |= BINPRM_FLAGS_PATH_INACCESSIBLE;
		bprm->filename = pathbuf;
	}
	bprm->interp = bprm->filename;

	retval = FUNC5(bprm);
	if (retval)
		goto out_unmark;

	retval = FUNC18(bprm, argv, envp);
	if (retval < 0)
		goto out;

	retval = FUNC19(bprm);
	if (retval < 0)
		goto out;

	retval = FUNC9(1, &bprm->filename, bprm);
	if (retval < 0)
		goto out;

	bprm->exec = bprm->p;
	retval = FUNC8(bprm->envc, envp, bprm);
	if (retval < 0)
		goto out;

	retval = FUNC8(bprm->argc, argv, bprm);
	if (retval < 0)
		goto out;

	FUNC30(bprm, bprm->file);

	retval = FUNC12(bprm);
	if (retval < 0)
		goto out;

	/* execve succeeded */
	current->fs->in_exec = 0;
	current->in_execve = 0;
	FUNC26(current);
	FUNC3(current);
	FUNC28(current, false);
	FUNC13(bprm);
	FUNC15(pathbuf);
	if (filename)
		FUNC22(filename);
	if (displaced)
		FUNC21(displaced);
	return retval;

out:
	if (bprm->mm) {
		FUNC2(bprm, 0);
		FUNC17(bprm->mm);
	}

out_unmark:
	current->fs->in_exec = 0;
	current->in_execve = 0;

out_free:
	FUNC13(bprm);
	FUNC15(pathbuf);

out_files:
	if (displaced)
		FUNC24(displaced);
out_ret:
	if (filename)
		FUNC22(filename);
	return retval;
}