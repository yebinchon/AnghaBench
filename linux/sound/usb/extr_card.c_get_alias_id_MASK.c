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
struct usb_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * quirk_alias ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static bool FUNC5(struct usb_device *dev, unsigned int *id)
{
	int i;
	unsigned int src, dst;

	for (i = 0; i < FUNC0(quirk_alias); i++) {
		if (!quirk_alias[i] ||
		    FUNC4(quirk_alias[i], "%x:%x", &src, &dst) != 2 ||
		    src != *id)
			continue;
		FUNC3(&dev->dev,
			 "device (%04x:%04x): applying quirk alias %04x:%04x\n",
			 FUNC2(*id), FUNC1(*id),
			 FUNC2(dst), FUNC1(dst));
		*id = dst;
		return true;
	}

	return false;
}