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

/* Variables and functions */
 unsigned char VORTEX_MIXER_CHNBASE ; 
 int VORTEX_MIXER_RTBASE ; 
 int VORTEX_MIXER_SR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,unsigned char) ; 

__attribute__((used)) static int
FUNC4(vortex_t * vortex, unsigned char mix, unsigned char ch)
{
	int temp, lifeboat = 0, prev;

	temp = FUNC1(vortex->mmio, VORTEX_MIXER_SR);
	if ((temp & (1 << ch)) == 0) {
		FUNC2(vortex->mmio, VORTEX_MIXER_CHNBASE + (ch << 2), mix);
		FUNC3(vortex, ch);
		return 1;
	}
	prev = VORTEX_MIXER_CHNBASE + (ch << 2);
	temp = FUNC1(vortex->mmio, prev);
	while (temp & 0x10) {
		prev = VORTEX_MIXER_RTBASE + ((temp & 0xf) << 2);
		temp = FUNC1(vortex->mmio, prev);
		//printk(KERN_INFO "vortex: mixAddWTD: while addr=%x, val=%x\n", prev, temp);
		if ((++lifeboat) > 0xf) {
			FUNC0(vortex->card->dev,
				"vortex_mixer_addWTD: lifeboat overflow\n");
			return 0;
		}
	}
	FUNC2(vortex->mmio, VORTEX_MIXER_RTBASE + ((temp & 0xf) << 2), mix);
	FUNC2(vortex->mmio, prev, (temp & 0xf) | 0x10);
	return 1;
}