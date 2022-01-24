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
 int ENOTDIR ; 
 int /*<<< orphan*/  LOOKUP_FOLLOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC2 (struct path*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  user_recovery_dirname ; 

int
FUNC4(char *recdir)
{
	int status;
	struct path path;

	status = FUNC1(recdir, LOOKUP_FOLLOW, &path);
	if (status)
		return status;
	status = -ENOTDIR;
	if (FUNC0(path.dentry)) {
		FUNC3(user_recovery_dirname, recdir);
		status = 0;
	}
	FUNC2(&path);
	return status;
}