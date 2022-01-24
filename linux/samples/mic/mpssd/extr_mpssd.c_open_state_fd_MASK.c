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
struct mic_info {char* name; } ;

/* Variables and functions */
 char* MICSYSFSDIR ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mic_info *mic)
{
	char pathname[PATH_MAX];
	int fd;

	FUNC2(pathname, PATH_MAX - 1, "%s/%s/%s",
		 MICSYSFSDIR, mic->name, "state");

	fd = FUNC1(pathname, O_RDONLY);
	if (fd < 0)
		FUNC0("%s: opening file %s failed %s\n",
			mic->name, pathname, FUNC3(errno));
	return fd;
}