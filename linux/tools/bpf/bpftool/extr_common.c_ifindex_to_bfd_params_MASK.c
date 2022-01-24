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
typedef  int /*<<< orphan*/  __u64 ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int IF_NAMESIZE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

const char *
FUNC5(__u32 ifindex, __u64 ns_dev, __u64 ns_ino,
		      const char **opt)
{
	char devname[IF_NAMESIZE];
	int vendor_id;
	int device_id;

	if (!FUNC0(ifindex, ns_dev, ns_ino, devname)) {
		FUNC1("Can't get net device name for ifindex %d: %s", ifindex,
		      FUNC4(errno));
		return NULL;
	}

	vendor_id = FUNC3(devname, "vendor");
	if (vendor_id < 0) {
		FUNC1("Can't get device vendor id for %s", devname);
		return NULL;
	}

	switch (vendor_id) {
	case 0x19ee:
		device_id = FUNC3(devname, "device");
		if (device_id != 0x4000 &&
		    device_id != 0x6000 &&
		    device_id != 0x6003)
			FUNC2("Unknown NFP device ID, assuming it is NFP-6xxx arch");
		*opt = "ctx4";
		return "NFP-6xxx";
	default:
		FUNC1("Can't get bfd arch name for device vendor id 0x%04x",
		      vendor_id);
		return NULL;
	}
}