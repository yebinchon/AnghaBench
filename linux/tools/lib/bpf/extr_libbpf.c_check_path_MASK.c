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
struct statfs {scalar_t__ f_type; } ;
typedef  int /*<<< orphan*/  errmsg ;

/* Variables and functions */
 scalar_t__ BPF_FS_MAGIC ; 
 int EINVAL ; 
 int ENOMEM ; 
 int STRERR_BUFSIZE ; 
 char* FUNC0 (char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 
 scalar_t__ FUNC4 (char*,struct statfs*) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(const char *path)
{
	char *cp, errmsg[STRERR_BUFSIZE];
	struct statfs st_fs;
	char *dname, *dir;
	int err = 0;

	if (path == NULL)
		return -EINVAL;

	dname = FUNC5(path);
	if (dname == NULL)
		return -ENOMEM;

	dir = FUNC0(dname);
	if (FUNC4(dir, &st_fs)) {
		cp = FUNC2(errno, errmsg, sizeof(errmsg));
		FUNC3("failed to statfs %s: %s\n", dir, cp);
		err = -errno;
	}
	FUNC1(dname);

	if (!err && st_fs.f_type != BPF_FS_MAGIC) {
		FUNC3("specified path %s is not on BPF FS\n", path);
		err = -EINVAL;
	}

	return err;
}