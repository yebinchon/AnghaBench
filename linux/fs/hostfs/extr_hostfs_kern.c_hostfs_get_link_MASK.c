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
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;

/* Variables and functions */
 int E2BIG ; 
 int ECHILD ; 
 int ENOMEM ; 
 char const* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (struct dentry*) ; 
 int FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  kfree_link ; 
 char* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct delayed_call*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static const char *FUNC7(struct dentry *dentry,
				   struct inode *inode,
				   struct delayed_call *done)
{
	char *link;
	if (!dentry)
		return FUNC0(-ECHILD);
	link = FUNC5(PATH_MAX, GFP_KERNEL);
	if (link) {
		char *path = FUNC2(dentry);
		int err = -ENOMEM;
		if (path) {
			err = FUNC3(path, link, PATH_MAX);
			if (err == PATH_MAX)
				err = -E2BIG;
			FUNC1(path);
		}
		if (err < 0) {
			FUNC4(link);
			return FUNC0(err);
		}
	} else {
		return FUNC0(-ENOMEM);
	}

	FUNC6(done, kfree_link, link);
	return link;
}