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
struct zpool_driver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 struct zpool_driver* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct zpool_driver*) ; 

bool FUNC3(char *type)
{
	struct zpool_driver *driver = FUNC1(type);

	if (!driver) {
		FUNC0("zpool-%s", type);
		driver = FUNC1(type);
	}

	if (!driver)
		return false;

	FUNC2(driver);
	return true;
}