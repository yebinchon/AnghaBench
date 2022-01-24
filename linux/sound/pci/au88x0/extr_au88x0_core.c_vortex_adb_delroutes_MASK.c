#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  mmio; TYPE_1__* card; } ;
typedef  TYPE_2__ vortex_t ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
typedef  int ADBRamLink ;

/* Variables and functions */
 int ADB_MASK ; 
 scalar_t__ VORTEX_ADB_CHNBASE ; 
 scalar_t__ VORTEX_ADB_RTBASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,unsigned char) ; 

__attribute__((used)) static void
FUNC4(vortex_t * vortex, unsigned char channel,
		     ADBRamLink route0, ADBRamLink route1)
{
	int temp, lifeboat = 0, prev;

	/* Find route. */
	temp =
	    FUNC1(vortex->mmio,
		   VORTEX_ADB_CHNBASE + (channel << 2)) & ADB_MASK;
	if (temp == (route0 & ADB_MASK)) {
		temp =
		    FUNC1(vortex->mmio,
			   VORTEX_ADB_RTBASE + ((route1 & ADB_MASK) << 2));
		if ((temp & ADB_MASK) == ADB_MASK)
			FUNC3(vortex, channel);
		FUNC2(vortex->mmio, VORTEX_ADB_CHNBASE + (channel << 2),
			temp);
		return;
	}
	do {
		prev = temp;
		temp =
		    FUNC1(vortex->mmio,
			   VORTEX_ADB_RTBASE + (prev << 2)) & ADB_MASK;
		if (((lifeboat++) > ADB_MASK) || (temp == ADB_MASK)) {
			FUNC0(vortex->card->dev,
				"vortex_adb_delroutes: route not found! 0x%x\n",
				route0);
			return;
		}
	}
	while (temp != (route0 & ADB_MASK));
	temp = FUNC1(vortex->mmio, VORTEX_ADB_RTBASE + (temp << 2));
	if ((temp & ADB_MASK) == route1)
		temp = FUNC1(vortex->mmio, VORTEX_ADB_RTBASE + (temp << 2));
	/* Make bridge over deleted route. */
	FUNC2(vortex->mmio, VORTEX_ADB_RTBASE + (prev << 2), temp);
}