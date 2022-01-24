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
 int FUNC0 (struct nameidata*) ; 
 int FUNC1 (char const*,struct nameidata*) ; 
 char* FUNC2 (struct nameidata*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct nameidata*) ; 

__attribute__((used)) static int FUNC4(struct nameidata *nd, unsigned flags,
				struct path *parent)
{
	const char *s = FUNC2(nd, flags);
	int err = FUNC1(s, nd);
	if (!err)
		err = FUNC0(nd);
	if (!err) {
		*parent = nd->path;
		nd->path.mnt = NULL;
		nd->path.dentry = NULL;
	}
	FUNC3(nd);
	return err;
}