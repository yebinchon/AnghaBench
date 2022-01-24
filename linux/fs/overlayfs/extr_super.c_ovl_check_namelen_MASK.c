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
struct path {int dummy; } ;
struct ovl_fs {int /*<<< orphan*/  namelen; } ;
struct kstatfs {int /*<<< orphan*/  f_namelen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (struct path*,struct kstatfs*) ; 

__attribute__((used)) static int FUNC3(struct path *path, struct ovl_fs *ofs,
			     const char *name)
{
	struct kstatfs statfs;
	int err = FUNC2(path, &statfs);

	if (err)
		FUNC1("overlayfs: statfs failed on '%s'\n", name);
	else
		ofs->namelen = FUNC0(ofs->namelen, statfs.f_namelen);

	return err;
}