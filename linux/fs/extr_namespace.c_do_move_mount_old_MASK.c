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
struct path {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LOOKUP_FOLLOW ; 
 int FUNC0 (struct path*,struct path*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC2 (struct path*) ; 

__attribute__((used)) static int FUNC3(struct path *path, const char *old_name)
{
	struct path old_path;
	int err;

	if (!old_name || !*old_name)
		return -EINVAL;

	err = FUNC1(old_name, LOOKUP_FOLLOW, &old_path);
	if (err)
		return err;

	err = FUNC0(&old_path, path);
	FUNC2(&old_path);
	return err;
}