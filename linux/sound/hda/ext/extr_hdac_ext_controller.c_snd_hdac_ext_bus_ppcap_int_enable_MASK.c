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
struct hdac_bus {int /*<<< orphan*/  ppcap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AZX_PPCTL_PIE ; 
 int /*<<< orphan*/  AZX_REG_PP_PPCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct hdac_bus *bus, bool enable)
{

	if (!bus->ppcap) {
		FUNC0(bus->dev, "Address of PP capability is NULL\n");
		return;
	}

	if (enable)
		FUNC1(bus->ppcap, AZX_REG_PP_PPCTL,
				 AZX_PPCTL_PIE, AZX_PPCTL_PIE);
	else
		FUNC1(bus->ppcap, AZX_REG_PP_PPCTL,
				 AZX_PPCTL_PIE, 0);
}