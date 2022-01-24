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
struct nameidata {struct path path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct path*) ; 
 int FUNC1 (char const*,struct nameidata*) ; 
 int FUNC2 (struct nameidata*) ; 
 char* FUNC3 (struct nameidata*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct nameidata*) ; 
 char* FUNC5 (struct nameidata*) ; 

__attribute__((used)) static int
FUNC6(struct nameidata *nd, unsigned flags, struct path *path)
{
	const char *s = FUNC3(nd, flags);
	int err;

	while (!(err = FUNC1(s, nd)) &&
		(err = FUNC2(nd)) > 0) {
		s = FUNC5(nd);
	}
	if (!err) {
		*path = nd->path;
		nd->path.mnt = NULL;
		nd->path.dentry = NULL;
		FUNC0(path);
	}
	FUNC4(nd);
	return err;
}