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
struct file_handle {int handle_bytes; int /*<<< orphan*/  f_handle; } ;

/* Variables and functions */
 int AT_FDCWD ; 
 int /*<<< orphan*/  PATH_MAX ; 
 struct file_handle* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct file_handle*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,char*,struct file_handle*,int*,int) ; 
 struct file_handle* FUNC6 (struct file_handle*,int) ; 

unsigned long long FUNC7(const char *path)
{
	int dirfd, err, flags, mount_id, fhsize;
	union {
		unsigned long long cgid;
		unsigned char raw_bytes[8];
	} id;
	char cgroup_workdir[PATH_MAX + 1];
	struct file_handle *fhp, *fhp2;
	unsigned long long ret = 0;

	FUNC1(cgroup_workdir, path);

	dirfd = AT_FDCWD;
	flags = 0;
	fhsize = sizeof(*fhp);
	fhp = FUNC0(1, fhsize);
	if (!fhp) {
		FUNC3("calloc");
		return 0;
	}
	err = FUNC5(dirfd, cgroup_workdir, fhp, &mount_id, flags);
	if (err >= 0 || fhp->handle_bytes != 8) {
		FUNC3("name_to_handle_at");
		goto free_mem;
	}

	fhsize = sizeof(struct file_handle) + fhp->handle_bytes;
	fhp2 = FUNC6(fhp, fhsize);
	if (!fhp2) {
		FUNC3("realloc");
		goto free_mem;
	}
	err = FUNC5(dirfd, cgroup_workdir, fhp2, &mount_id, flags);
	fhp = fhp2;
	if (err < 0) {
		FUNC3("name_to_handle_at");
		goto free_mem;
	}

	FUNC4(id.raw_bytes, fhp->f_handle, 8);
	ret = id.cgid;

free_mem:
	FUNC2(fhp);
	return ret;
}