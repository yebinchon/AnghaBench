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
struct o2hb_region {scalar_t__ hr_task; } ;
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  o2hb_live_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (scalar_t__) ; 
 struct o2hb_region* FUNC4 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC5(struct config_item *item, char *page)
{
	struct o2hb_region *reg = FUNC4(item);
	pid_t pid = 0;

	FUNC0(&o2hb_live_lock);
	if (reg->hr_task)
		pid = FUNC3(reg->hr_task);
	FUNC1(&o2hb_live_lock);

	if (!pid)
		return 0;

	return FUNC2(page, "%u\n", pid);
}