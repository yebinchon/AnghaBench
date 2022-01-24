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
struct TYPE_2__ {int /*<<< orphan*/  release; } ;
struct hdac_device {TYPE_1__ dev; int /*<<< orphan*/  type; struct hdac_bus* bus; } ;
struct hdac_bus {int idx; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_DEV_ASOC ; 
 int /*<<< orphan*/  default_release ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct hdac_device*,struct hdac_bus*,char*,int) ; 
 int FUNC2 (struct hdac_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hdac_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int,int) ; 

int FUNC5(struct hdac_bus *bus, int addr,
					struct hdac_device *hdev)
{
	char name[15];
	int ret;

	hdev->bus = bus;

	FUNC4(name, sizeof(name), "ehdaudio%dD%d", bus->idx, addr);

	ret  = FUNC1(hdev, bus, name, addr);
	if (ret < 0) {
		FUNC0(bus->dev, "device init failed for hdac device\n");
		return ret;
	}
	hdev->type = HDA_DEV_ASOC;
	hdev->dev.release = default_release;

	ret = FUNC2(hdev);
	if (ret) {
		FUNC0(bus->dev, "failed to register hdac device\n");
		FUNC3(hdev);
		return ret;
	}

	return 0;
}