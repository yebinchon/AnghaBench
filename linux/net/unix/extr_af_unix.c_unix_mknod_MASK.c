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
typedef  int /*<<< orphan*/  umode_t ;
struct path {int /*<<< orphan*/  dentry; int /*<<< orphan*/  mnt; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct path*,struct dentry*) ; 
 struct dentry* FUNC5 (int /*<<< orphan*/ ,char const*,struct path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct path*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(const char *sun_path, umode_t mode, struct path *res)
{
	struct dentry *dentry;
	struct path path;
	int err = 0;
	/*
	 * Get the parent directory, calculate the hash for last
	 * component.
	 */
	dentry = FUNC5(AT_FDCWD, sun_path, &path, 0);
	err = FUNC1(dentry);
	if (FUNC0(dentry))
		return err;

	/*
	 * All right, let's create it.
	 */
	err = FUNC7(&path, dentry, mode, 0);
	if (!err) {
		err = FUNC8(FUNC2(path.dentry), dentry, mode, 0);
		if (!err) {
			res->mnt = FUNC6(path.mnt);
			res->dentry = FUNC3(dentry);
		}
	}
	FUNC4(&path, dentry);
	return err;
}