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
typedef  int /*<<< orphan*/  vortex_t ;

/* Variables and functions */
 int* mchannels ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char,int,int) ; 

__attribute__((used)) static void
FUNC3(vortex_t * vortex, unsigned char mix, int mixin)
{
	FUNC0(vortex, mix, mixin);
	if ((mchannels[mix] & (1 << mixin)) == 0) {
		FUNC2(vortex, mix, mixin, 0x80);	/*0x80 : mute */
		mchannels[mix] |= (1 << mixin);
	}
	FUNC1(vortex, mix, mixin, 1);
}