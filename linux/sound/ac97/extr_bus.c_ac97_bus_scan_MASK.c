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
struct ac97_controller {int slots_available; } ;

/* Variables and functions */
 int AC97_BUS_MAX_CODECS ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct ac97_controller*,int,unsigned int) ; 
 scalar_t__ FUNC2 (struct ac97_controller*,int) ; 
 unsigned int FUNC3 (struct ac97_controller*,int) ; 

__attribute__((used)) static int FUNC4(struct ac97_controller *ac97_ctrl)
{
	int ret, i;
	unsigned int vendor_id;

	for (i = 0; i < AC97_BUS_MAX_CODECS; i++) {
		if (FUNC2(ac97_ctrl, i))
			continue;
		if (!(ac97_ctrl->slots_available & FUNC0(i)))
			continue;
		vendor_id = FUNC3(ac97_ctrl, i);
		if (!vendor_id)
			continue;

		ret = FUNC1(ac97_ctrl, i, vendor_id);
		if (ret < 0)
			return ret;
	}
	return 0;
}