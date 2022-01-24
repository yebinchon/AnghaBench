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
 int ROUTE_MASK ; 
 scalar_t__ VORTEX_ADB_CHNBASE ; 
 scalar_t__ VORTEX_ADB_RTBASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,unsigned char) ; 

__attribute__((used)) static void
FUNC4(vortex_t * vortex, unsigned char channel,
		     ADBRamLink * route, int rnum)
{
	int temp, prev, lifeboat = 0;

	if ((rnum <= 0) || (route == NULL))
		return;
	/* Write last routes. */
	rnum--;
	FUNC2(vortex->mmio,
		VORTEX_ADB_RTBASE + ((route[rnum] & ADB_MASK) << 2),
		ROUTE_MASK);
	while (rnum > 0) {
		FUNC2(vortex->mmio,
			VORTEX_ADB_RTBASE +
			((route[rnum - 1] & ADB_MASK) << 2), route[rnum]);
		rnum--;
	}
	/* Write first route. */
	temp =
	    FUNC1(vortex->mmio,
		   VORTEX_ADB_CHNBASE + (channel << 2)) & ADB_MASK;
	if (temp == ADB_MASK) {
		/* First entry on this channel. */
		FUNC2(vortex->mmio, VORTEX_ADB_CHNBASE + (channel << 2),
			route[0]);
		FUNC3(vortex, channel);
		return;
	}
	/* Not first entry on this channel. Need to link. */
	do {
		prev = temp;
		temp =
		    FUNC1(vortex->mmio,
			   VORTEX_ADB_RTBASE + (temp << 2)) & ADB_MASK;
		if ((lifeboat++) > ADB_MASK) {
			FUNC0(vortex->card->dev,
				"vortex_adb_addroutes: unending route! 0x%x\n",
				*route);
			return;
		}
	}
	while (temp != ADB_MASK);
	FUNC2(vortex->mmio, VORTEX_ADB_RTBASE + (prev << 2), route[0]);
}