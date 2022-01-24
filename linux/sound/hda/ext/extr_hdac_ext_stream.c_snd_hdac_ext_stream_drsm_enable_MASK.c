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
typedef  int u32 ;
struct hdac_bus {int /*<<< orphan*/  drsmcap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AZX_REG_DRSM_CTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

void FUNC2(struct hdac_bus *bus,
				bool enable, int index)
{
	u32 mask = 0;

	if (!bus->drsmcap) {
		FUNC0(bus->dev, "Address of DRSM capability is NULL\n");
		return;
	}

	mask |= (1 << index);

	if (enable)
		FUNC1(bus->drsmcap, AZX_REG_DRSM_CTL, mask, mask);
	else
		FUNC1(bus->drsmcap, AZX_REG_DRSM_CTL, mask, 0);
}