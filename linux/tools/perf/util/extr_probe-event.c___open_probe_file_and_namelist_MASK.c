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
struct strlist {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int PF_FL_RW ; 
 int PF_FL_UPROBE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct strlist* FUNC2 (int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(bool uprobe,
					  struct strlist **namelist)
{
	int fd;

	fd = FUNC3(PF_FL_RW | (uprobe ? PF_FL_UPROBE : 0));
	if (fd < 0)
		return fd;

	/* Get current event names */
	*namelist = FUNC2(fd);
	if (!(*namelist)) {
		FUNC1("Failed to get current event list.\n");
		FUNC0(fd);
		return -ENOMEM;
	}
	return fd;
}