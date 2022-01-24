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
struct path {int /*<<< orphan*/ * dentry; int /*<<< orphan*/ * mnt; } ;
struct nameidata {int flags; struct path path; } ;

/* Variables and functions */
 int ENOTDIR ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int LOOKUP_DIRECTORY ; 
 unsigned int LOOKUP_DOWN ; 
 int FUNC2 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct nameidata*) ; 
 int FUNC5 (char const*,struct nameidata*) ; 
 int FUNC6 (struct nameidata*) ; 
 char* FUNC7 (struct nameidata*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct nameidata*) ; 
 char* FUNC9 (struct nameidata*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct nameidata *nd, unsigned flags, struct path *path)
{
	const char *s = FUNC7(nd, flags);
	int err;

	if (FUNC10(flags & LOOKUP_DOWN) && !FUNC1(s)) {
		err = FUNC4(nd);
		if (FUNC10(err < 0))
			s = FUNC0(err);
	}

	while (!(err = FUNC5(s, nd))
		&& ((err = FUNC6(nd)) > 0)) {
		s = FUNC9(nd);
	}
	if (!err)
		err = FUNC2(nd);

	if (!err && nd->flags & LOOKUP_DIRECTORY)
		if (!FUNC3(nd->path.dentry))
			err = -ENOTDIR;
	if (!err) {
		*path = nd->path;
		nd->path.mnt = NULL;
		nd->path.dentry = NULL;
	}
	FUNC8(nd);
	return err;
}