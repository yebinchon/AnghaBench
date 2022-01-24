#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct config_item {int dummy; } ;
typedef  unsigned int ssize_t ;
struct TYPE_2__ {char* hr_dev_name; scalar_t__ hr_bdev; } ;

/* Variables and functions */
 unsigned int FUNC0 (char*,char*,char*) ; 
 TYPE_1__* FUNC1 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC2(struct config_item *item, char *page)
{
	unsigned int ret = 0;

	if (FUNC1(item)->hr_bdev)
		ret = FUNC0(page, "%s\n", FUNC1(item)->hr_dev_name);

	return ret;
}