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

/* Variables and functions */
 int AT_EMPTY_PATH ; 
 int AT_FDCWD ; 
 int AT_SYMLINK_NOFOLLOW ; 
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ELOOP ; 
 int /*<<< orphan*/  ENOENT ; 
 scalar_t__ ENOSYS ; 
 int /*<<< orphan*/  ENOTDIR ; 
 int O_CLOEXEC ; 
 int O_DIRECTORY ; 
 int O_PATH ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int,char*,int) ; 
 scalar_t__ FUNC1 (int,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,char*,int) ; 
 char* FUNC3 (char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int) ; 
 char* FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(void)
{
	int fail = 0;
	char *fullname = FUNC8("execveat", NULL);
	char *fullname_script = FUNC8("script", NULL);
	char *fullname_symlink = FUNC3(fullname, ".symlink");
	int subdir_dfd = FUNC7("subdir", O_DIRECTORY|O_RDONLY);
	int subdir_dfd_ephemeral = FUNC7("subdir.ephemeral",
					       O_DIRECTORY|O_RDONLY);
	int dot_dfd = FUNC7(".", O_DIRECTORY|O_RDONLY);
	int root_dfd = FUNC7("/", O_DIRECTORY|O_RDONLY);
	int dot_dfd_path = FUNC7(".", O_DIRECTORY|O_RDONLY|O_PATH);
	int dot_dfd_cloexec = FUNC7(".", O_DIRECTORY|O_RDONLY|O_CLOEXEC);
	int fd = FUNC7("execveat", O_RDONLY);
	int fd_path = FUNC7("execveat", O_RDONLY|O_PATH);
	int fd_symlink = FUNC7("execveat.symlink", O_RDONLY);
	int fd_denatured = FUNC7("execveat.denatured", O_RDONLY);
	int fd_denatured_path = FUNC7("execveat.denatured",
					    O_RDONLY|O_PATH);
	int fd_script = FUNC7("script", O_RDONLY);
	int fd_ephemeral = FUNC7("execveat.ephemeral", O_RDONLY);
	int fd_ephemeral_path = FUNC7("execveat.path.ephemeral",
					    O_RDONLY|O_PATH);
	int fd_script_ephemeral = FUNC7("script.ephemeral", O_RDONLY);
	int fd_cloexec = FUNC7("execveat", O_RDONLY|O_CLOEXEC);
	int fd_script_cloexec = FUNC7("script", O_RDONLY|O_CLOEXEC);

	/* Check if we have execveat at all, and bail early if not */
	errno = 0;
	FUNC4(-1, NULL, NULL, NULL, 0);
	if (errno == ENOSYS) {
		FUNC5(
			"ENOSYS calling execveat - no kernel support?\n");
	}

	/* Change file position to confirm it doesn't affect anything */
	FUNC6(fd, 10, SEEK_SET);

	/* Normal executable file: */
	/*   dfd + path */
	fail += FUNC0(subdir_dfd, "../execveat", 0);
	fail += FUNC0(dot_dfd, "execveat", 0);
	fail += FUNC0(dot_dfd_path, "execveat", 0);
	/*   absolute path */
	fail += FUNC0(AT_FDCWD, fullname, 0);
	/*   absolute path with nonsense dfd */
	fail += FUNC0(99, fullname, 0);
	/*   fd + no path */
	fail += FUNC0(fd, "", AT_EMPTY_PATH);
	/*   O_CLOEXEC fd + no path */
	fail += FUNC0(fd_cloexec, "", AT_EMPTY_PATH);
	/*   O_PATH fd */
	fail += FUNC0(fd_path, "", AT_EMPTY_PATH);

	/* Mess with executable file that's already open: */
	/*   fd + no path to a file that's been renamed */
	FUNC9("execveat.ephemeral", "execveat.moved");
	fail += FUNC0(fd_ephemeral, "", AT_EMPTY_PATH);
	/*   fd + no path to a file that's been deleted */
	FUNC10("execveat.moved"); /* remove the file now fd open */
	fail += FUNC0(fd_ephemeral, "", AT_EMPTY_PATH);

	/* Mess with executable file that's already open with O_PATH */
	/*   fd + no path to a file that's been deleted */
	FUNC10("execveat.path.ephemeral");
	fail += FUNC0(fd_ephemeral_path, "", AT_EMPTY_PATH);

	/* Invalid argument failures */
	fail += FUNC1(fd, "", 0, ENOENT);
	fail += FUNC1(fd, NULL, AT_EMPTY_PATH, EFAULT);

	/* Symlink to executable file: */
	/*   dfd + path */
	fail += FUNC0(dot_dfd, "execveat.symlink", 0);
	fail += FUNC0(dot_dfd_path, "execveat.symlink", 0);
	/*   absolute path */
	fail += FUNC0(AT_FDCWD, fullname_symlink, 0);
	/*   fd + no path, even with AT_SYMLINK_NOFOLLOW (already followed) */
	fail += FUNC0(fd_symlink, "", AT_EMPTY_PATH);
	fail += FUNC0(fd_symlink, "",
			       AT_EMPTY_PATH|AT_SYMLINK_NOFOLLOW);

	/* Symlink fails when AT_SYMLINK_NOFOLLOW set: */
	/*   dfd + path */
	fail += FUNC1(dot_dfd, "execveat.symlink",
				    AT_SYMLINK_NOFOLLOW, ELOOP);
	fail += FUNC1(dot_dfd_path, "execveat.symlink",
				    AT_SYMLINK_NOFOLLOW, ELOOP);
	/*   absolute path */
	fail += FUNC1(AT_FDCWD, fullname_symlink,
				    AT_SYMLINK_NOFOLLOW, ELOOP);

	/* Shell script wrapping executable file: */
	/*   dfd + path */
	fail += FUNC0(subdir_dfd, "../script", 0);
	fail += FUNC0(dot_dfd, "script", 0);
	fail += FUNC0(dot_dfd_path, "script", 0);
	/*   absolute path */
	fail += FUNC0(AT_FDCWD, fullname_script, 0);
	/*   fd + no path */
	fail += FUNC0(fd_script, "", AT_EMPTY_PATH);
	fail += FUNC0(fd_script, "",
			       AT_EMPTY_PATH|AT_SYMLINK_NOFOLLOW);
	/*   O_CLOEXEC fd fails for a script (as script file inaccessible) */
	fail += FUNC1(fd_script_cloexec, "", AT_EMPTY_PATH,
				    ENOENT);
	fail += FUNC1(dot_dfd_cloexec, "script", 0, ENOENT);

	/* Mess with script file that's already open: */
	/*   fd + no path to a file that's been renamed */
	FUNC9("script.ephemeral", "script.moved");
	fail += FUNC0(fd_script_ephemeral, "", AT_EMPTY_PATH);
	/*   fd + no path to a file that's been deleted */
	FUNC10("script.moved"); /* remove the file while fd open */
	fail += FUNC0(fd_script_ephemeral, "", AT_EMPTY_PATH);

	/* Rename a subdirectory in the path: */
	FUNC9("subdir.ephemeral", "subdir.moved");
	fail += FUNC0(subdir_dfd_ephemeral, "../script", 0);
	fail += FUNC0(subdir_dfd_ephemeral, "script", 0);
	/* Remove the subdir and its contents */
	FUNC10("subdir.moved/script");
	FUNC10("subdir.moved");
	/* Shell loads via deleted subdir OK because name starts with .. */
	fail += FUNC0(subdir_dfd_ephemeral, "../script", 0);
	fail += FUNC1(subdir_dfd_ephemeral, "script", 0, ENOENT);

	/* Flag values other than AT_SYMLINK_NOFOLLOW => EINVAL */
	fail += FUNC1(dot_dfd, "execveat", 0xFFFF, EINVAL);
	/* Invalid path => ENOENT */
	fail += FUNC1(dot_dfd, "no-such-file", 0, ENOENT);
	fail += FUNC1(dot_dfd_path, "no-such-file", 0, ENOENT);
	fail += FUNC1(AT_FDCWD, "no-such-file", 0, ENOENT);
	/* Attempt to execute directory => EACCES */
	fail += FUNC1(dot_dfd, "", AT_EMPTY_PATH, EACCES);
	/* Attempt to execute non-executable => EACCES */
	fail += FUNC1(dot_dfd, "Makefile", 0, EACCES);
	fail += FUNC1(fd_denatured, "", AT_EMPTY_PATH, EACCES);
	fail += FUNC1(fd_denatured_path, "", AT_EMPTY_PATH,
				    EACCES);
	/* Attempt to execute nonsense FD => EBADF */
	fail += FUNC1(99, "", AT_EMPTY_PATH, EBADF);
	fail += FUNC1(99, "execveat", 0, EBADF);
	/* Attempt to execute relative to non-directory => ENOTDIR */
	fail += FUNC1(fd, "execveat", 0, ENOTDIR);

	fail += FUNC2(root_dfd, "execveat", 0);
	fail += FUNC2(root_dfd, "script", 1);
	return fail;
}