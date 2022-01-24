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
 int /*<<< orphan*/  LOOKUP_FOLLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,struct path*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct path*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int FUNC5(const char *name, struct path *path)
{
	int err = -EINVAL;

	if (!*name) {
		FUNC4("overlayfs: empty lowerdir\n");
		goto out;
	}
	err = FUNC1(name, LOOKUP_FOLLOW, path);
	if (err) {
		FUNC4("overlayfs: failed to resolve '%s': %i\n", name, err);
		goto out;
	}
	err = -EINVAL;
	if (FUNC2(path->dentry)) {
		FUNC4("overlayfs: filesystem on '%s' not supported\n", name);
		goto out_put;
	}
	if (!FUNC0(path->dentry)) {
		FUNC4("overlayfs: '%s' not a directory\n", name);
		goto out_put;
	}
	return 0;

out_put:
	FUNC3(path);
out:
	return err;
}