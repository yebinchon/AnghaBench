#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct qstr {int dummy; } ;
struct path {TYPE_1__* dentry; } ;
struct filename {int dummy; } ;
typedef  struct filename dentry ;
struct TYPE_2__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int /*<<< orphan*/  EINVAL ; 
 struct filename* FUNC0 (struct filename*) ; 
 struct filename* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct filename*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int LAST_NORM ; 
 struct filename* FUNC3 (struct qstr*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct filename* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct path*,struct qstr*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct path*) ; 
 int /*<<< orphan*/  FUNC9 (struct filename*) ; 
 scalar_t__ FUNC10 (int) ; 

struct dentry *FUNC11(const char *name, struct path *path)
{
	struct filename *filename;
	struct dentry *d;
	struct qstr last;
	int type;

	filename = FUNC4(AT_FDCWD, FUNC5(name), 0, path,
				    &last, &type);
	if (FUNC2(filename))
		return FUNC0(filename);
	if (FUNC10(type != LAST_NORM)) {
		FUNC8(path);
		FUNC9(filename);
		return FUNC1(-EINVAL);
	}
	FUNC6(path->dentry->d_inode, I_MUTEX_PARENT);
	d = FUNC3(&last, path->dentry, 0);
	if (FUNC2(d)) {
		FUNC7(path->dentry->d_inode);
		FUNC8(path);
	}
	FUNC9(filename);
	return d;
}