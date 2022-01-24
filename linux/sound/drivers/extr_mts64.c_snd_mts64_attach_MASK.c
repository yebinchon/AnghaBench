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
struct platform_device {int dummy; } ;
struct parport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLATFORM_DRIVER ; 
 size_t device_count ; 
 scalar_t__ FUNC0 (struct platform_device*) ; 
 struct platform_device* FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 struct platform_device** platform_devices ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct parport*) ; 

__attribute__((used)) static void FUNC6(struct parport *p)
{
	struct platform_device *device;

	device = FUNC1(PLATFORM_DRIVER, device_count);
	if (!device)
		return;

	/* Temporary assignment to forward the parport */
	FUNC5(device, p);

	if (FUNC0(device) < 0) {
		FUNC2(device);
		return;
	}

	/* Since we dont get the return value of probe
	 * We need to check if device probing succeeded or not */
	if (!FUNC4(device)) {
		FUNC3(device);
		return;
	}

	/* register device in global table */
	platform_devices[device_count] = device;
	device_count++;
}