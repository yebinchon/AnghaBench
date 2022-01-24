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
struct hdac_bus {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AZX_GCTL_RESET ; 
 int /*<<< orphan*/  AZX_VS_EM2_DUM ; 
 int /*<<< orphan*/  GCTL ; 
 int /*<<< orphan*/  VS_EM2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hdac_bus*) ; 
 int FUNC2 (struct hdac_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hdac_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct hdac_bus *bus)
{
	/* For the DUM bit to be set, CRST needs to be out of reset state */
	if (!(FUNC2(bus, GCTL) & AZX_GCTL_RESET)) {
		FUNC0(bus->dev, false);
		FUNC1(bus);
		FUNC0(bus->dev, true);
	}

	FUNC3(bus, VS_EM2, AZX_VS_EM2_DUM, AZX_VS_EM2_DUM);
}