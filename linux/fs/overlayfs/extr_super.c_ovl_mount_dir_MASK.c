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
struct path {int /*<<< orphan*/  dentry; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,struct path*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct path*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static int FUNC7(const char *name, struct path *path)
{
	int err = -ENOMEM;
	char *tmp = FUNC1(name, GFP_KERNEL);

	if (tmp) {
		FUNC4(tmp);
		err = FUNC3(tmp, path);

		if (!err)
			if (FUNC2(path->dentry)) {
				FUNC6("overlayfs: filesystem on '%s' not supported as upperdir\n",
				       tmp);
				FUNC5(path);
				err = -EINVAL;
			}
		FUNC0(tmp);
	}
	return err;
}