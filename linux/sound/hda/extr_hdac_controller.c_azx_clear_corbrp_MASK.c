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
 int AZX_CORBRP_RST ; 
 int /*<<< orphan*/  CORBRP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct hdac_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hdac_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct hdac_bus *bus)
{
	int timeout;

	for (timeout = 1000; timeout > 0; timeout--) {
		if (FUNC1(bus, CORBRP) & AZX_CORBRP_RST)
			break;
		FUNC3(1);
	}
	if (timeout <= 0)
		FUNC0(bus->dev, "CORB reset timeout#1, CORBRP = %d\n",
			FUNC1(bus, CORBRP));

	FUNC2(bus, CORBRP, 0);
	for (timeout = 1000; timeout > 0; timeout--) {
		if (FUNC1(bus, CORBRP) == 0)
			break;
		FUNC3(1);
	}
	if (timeout <= 0)
		FUNC0(bus->dev, "CORB reset timeout#2, CORBRP = %d\n",
			FUNC1(bus, CORBRP));
}