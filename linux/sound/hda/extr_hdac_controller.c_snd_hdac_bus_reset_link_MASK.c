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
struct hdac_bus {scalar_t__ codec_mask; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  GCTL ; 
 int /*<<< orphan*/  STATESTS ; 
 int /*<<< orphan*/  STATESTS_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct hdac_bus*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct hdac_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hdac_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

int FUNC7(struct hdac_bus *bus, bool full_reset)
{
	if (!full_reset)
		goto skip_reset;

	/* clear STATESTS */
	FUNC5(bus, STATESTS, STATESTS_INT_MASK);

	/* reset controller */
	FUNC1(bus);

	/* delay for >= 100us for codec PLL to settle per spec
	 * Rev 0.9 section 5.5.1
	 */
	FUNC6(500, 1000);

	/* Bring controller out of reset */
	FUNC2(bus);

	/* Brent Chartrand said to wait >= 540us for codecs to initialize */
	FUNC6(1000, 1200);

 skip_reset:
	/* check to see if controller is ready */
	if (!FUNC3(bus, GCTL)) {
		FUNC0(bus->dev, "controller not ready!\n");
		return -EBUSY;
	}

	/* detect codecs */
	if (!bus->codec_mask) {
		bus->codec_mask = FUNC4(bus, STATESTS);
		FUNC0(bus->dev, "codec_mask = 0x%lx\n", bus->codec_mask);
	}

	return 0;
}