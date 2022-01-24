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

/* Variables and functions */
 int EXIT_SUCCESS ; 
 int MS_NOATIME ; 
 int MS_NODEV ; 
 int MS_NODIRATIME ; 
 int /*<<< orphan*/  MS_NOEXEC ; 
 int /*<<< orphan*/  MS_NOSUID ; 
 int /*<<< orphan*/  MS_RDONLY ; 
 int MS_RELATIME ; 
 int MS_STRICTATIME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(int argc, char **argv)
{
	if (!FUNC4(MS_RDONLY)) {
		FUNC0("MS_RDONLY malfunctions\n");
	}
	if (!FUNC2("devpts", "newinstance", MS_NODEV, MS_NODEV, 0)) {
		FUNC0("MS_NODEV malfunctions\n");
	}
	if (!FUNC4(MS_NOSUID)) {
		FUNC0("MS_NOSUID malfunctions\n");
	}
	if (!FUNC4(MS_NOEXEC)) {
		FUNC0("MS_NOEXEC malfunctions\n");
	}
	if (!FUNC3(MS_RELATIME,
				       MS_NOATIME))
	{
		FUNC0("MS_RELATIME malfunctions\n");
	}
	if (!FUNC3(MS_STRICTATIME,
				       MS_NOATIME))
	{
		FUNC0("MS_STRICTATIME malfunctions\n");
	}
	if (!FUNC3(MS_NOATIME,
				       MS_STRICTATIME))
	{
		FUNC0("MS_NOATIME malfunctions\n");
	}
	if (!FUNC3(MS_RELATIME|MS_NODIRATIME,
				       MS_NOATIME))
	{
		FUNC0("MS_RELATIME|MS_NODIRATIME malfunctions\n");
	}
	if (!FUNC3(MS_STRICTATIME|MS_NODIRATIME,
				       MS_NOATIME))
	{
		FUNC0("MS_STRICTATIME|MS_NODIRATIME malfunctions\n");
	}
	if (!FUNC3(MS_NOATIME|MS_NODIRATIME,
				       MS_STRICTATIME))
	{
		FUNC0("MS_NOATIME|MS_DIRATIME malfunctions\n");
	}
	if (!FUNC2("ramfs", NULL, MS_STRICTATIME, 0, MS_NOATIME))
	{
		FUNC0("Default atime malfunctions\n");
	}
	if (!FUNC1()) {
		FUNC0("Mount flags unexpectedly changed after remount\n");
	}
	return EXIT_SUCCESS;
}