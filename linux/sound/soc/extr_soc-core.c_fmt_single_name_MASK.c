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
struct device {TYPE_1__* driver; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NAME_SIZE ; 
 char* FUNC0 (struct device*) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,char*) ; 
 int FUNC3 (char*,char*,int*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 size_t FUNC5 (char*) ; 
 char* FUNC6 (char*,char*) ; 

__attribute__((used)) static char *FUNC7(struct device *dev, int *id)
{
	char *found, name[NAME_SIZE];
	int id1, id2;

	if (FUNC0(dev) == NULL)
		return NULL;

	FUNC4(name, FUNC0(dev), NAME_SIZE);

	/* are we a "%s.%d" name (platform and SPI components) */
	found = FUNC6(name, dev->driver->name);
	if (found) {
		/* get ID */
		if (FUNC3(&found[FUNC5(dev->driver->name)], ".%d", id) == 1) {

			/* discard ID from name if ID == -1 */
			if (*id == -1)
				found[FUNC5(dev->driver->name)] = '\0';
		}

	} else {
		/* I2C component devices are named "bus-addr" */
		if (FUNC3(name, "%x-%x", &id1, &id2) == 2) {
			char tmp[NAME_SIZE];

			/* create unique ID number from I2C addr and bus */
			*id = ((id1 & 0xffff) << 16) + id2;

			/* sanitize component name for DAI link creation */
			FUNC2(tmp, NAME_SIZE, "%s.%s", dev->driver->name,
				 name);
			FUNC4(name, tmp, NAME_SIZE);
		} else
			*id = 0;
	}

	return FUNC1(name, GFP_KERNEL);
}