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
struct ctl_table_set {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  nreg; struct ctl_table_set* set; } ;
struct ctl_dir {TYPE_1__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int ENOMEM ; 
 struct ctl_dir* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ctl_dir*) ; 
 int /*<<< orphan*/  FUNC2 (struct ctl_dir*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct ctl_dir* FUNC4 (struct ctl_dir*,char const*,int) ; 
 int FUNC5 (struct ctl_dir*,TYPE_1__*) ; 
 struct ctl_dir* FUNC6 (struct ctl_table_set*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysctl_lock ; 
 int /*<<< orphan*/  FUNC11 (struct ctl_dir*) ; 

__attribute__((used)) static struct ctl_dir *FUNC12(struct ctl_dir *dir,
				  const char *name, int namelen)
{
	struct ctl_table_set *set = dir->header.set;
	struct ctl_dir *subdir, *new = NULL;
	int err;

	FUNC9(&sysctl_lock);
	subdir = FUNC4(dir, name, namelen);
	if (!FUNC1(subdir))
		goto found;
	if (FUNC2(subdir) != -ENOENT)
		goto failed;

	FUNC10(&sysctl_lock);
	new = FUNC6(set, name, namelen);
	FUNC9(&sysctl_lock);
	subdir = FUNC0(-ENOMEM);
	if (!new)
		goto failed;

	/* Was the subdir added while we dropped the lock? */
	subdir = FUNC4(dir, name, namelen);
	if (!FUNC1(subdir))
		goto found;
	if (FUNC2(subdir) != -ENOENT)
		goto failed;

	/* Nope.  Use the our freshly made directory entry. */
	err = FUNC5(dir, &new->header);
	subdir = FUNC0(err);
	if (err)
		goto failed;
	subdir = new;
found:
	subdir->header.nreg++;
failed:
	if (FUNC1(subdir)) {
		FUNC8("sysctl could not get directory: ");
		FUNC11(dir);
		FUNC7("/%*.*s %ld\n",
			namelen, namelen, name, FUNC2(subdir));
	}
	FUNC3(&dir->header);
	if (new)
		FUNC3(&new->header);
	FUNC10(&sysctl_lock);
	return subdir;
}