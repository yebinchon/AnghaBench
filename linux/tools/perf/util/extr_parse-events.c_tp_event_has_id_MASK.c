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

/* Variables and functions */
 int EINVAL ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*,char*) ; 

__attribute__((used)) static int FUNC3(const char *dir_path, struct dirent *evt_dir)
{
	char evt_path[MAXPATHLEN];
	int fd;

	FUNC2(evt_path, MAXPATHLEN, "%s/%s/id", dir_path, evt_dir->d_name);
	fd = FUNC1(evt_path, O_RDONLY);
	if (fd < 0)
		return -EINVAL;
	FUNC0(fd);

	return 0;
}