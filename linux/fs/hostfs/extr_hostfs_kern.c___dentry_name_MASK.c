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
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {char* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*) ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (struct dentry*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 size_t FUNC6 (char*) ; 

__attribute__((used)) static char *FUNC7(struct dentry *dentry, char *name)
{
	char *p = FUNC3(dentry, name, PATH_MAX);
	char *root;
	size_t len;

	root = dentry->d_sb->s_fs_info;
	len = FUNC6(root);
	if (FUNC1(p)) {
		FUNC2(name);
		return NULL;
	}

	/*
	 * This function relies on the fact that dentry_path_raw() will place
	 * the path name at the end of the provided buffer.
	 */
	FUNC0(p + FUNC6(p) + 1 != name + PATH_MAX);

	FUNC5(name, root, PATH_MAX);
	if (len > p - name) {
		FUNC2(name);
		return NULL;
	}

	if (p > name + len)
		FUNC4(name + len, p);

	return name;
}