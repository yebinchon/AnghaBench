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
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 struct dirent* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(const char *dev_dir_name)
{
	DIR *dp;
	const struct dirent *ent;

	dp = FUNC3(dev_dir_name);
	if (!dp)
		return -errno;

	while (ent = FUNC5(dp), ent)
		if (FUNC1(ent->d_name, "in_") &&
		   (FUNC0(ent->d_name, "_raw") ||
		    FUNC0(ent->d_name, "_input")))
			FUNC4("   %-10s\n", ent->d_name);

	return (FUNC2(dp) == -1) ? -errno : 0;
}