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
struct hdac_bus {int /*<<< orphan*/  cmd_mutex; } ;
struct azx {int probing; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AC_NODE_ROOT ; 
 int AC_PAR_VENDOR_ID ; 
 int AC_VERB_PARAMETERS ; 
 int EIO ; 
 struct hdac_bus* FUNC0 (struct azx*) ; 
 int FUNC1 (struct hdac_bus*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct hdac_bus*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct azx *chip, int addr)
{
	unsigned int cmd = (addr << 28) | (AC_NODE_ROOT << 20) |
		(AC_VERB_PARAMETERS << 8) | AC_PAR_VENDOR_ID;
	struct hdac_bus *bus = FUNC0(chip);
	int err;
	unsigned int res = -1;

	FUNC4(&bus->cmd_mutex);
	chip->probing = 1;
	FUNC2(bus, cmd);
	err = FUNC1(bus, addr, &res);
	chip->probing = 0;
	FUNC5(&bus->cmd_mutex);
	if (err < 0 || res == -1)
		return -EIO;
	FUNC3(chip->card->dev, "codec #%d probed OK\n", addr);
	return 0;
}