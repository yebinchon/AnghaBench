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
struct snd_akm4xxx {unsigned char total_regs; } ;

/* Variables and functions */
 int FUNC0 (struct snd_akm4xxx*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_akm4xxx*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(struct snd_akm4xxx *ak, int state)
{
	unsigned char reg;

	if (state) {
		FUNC1(ak, 0, 0x01, 0x02); /* reset and soft-mute */
		return;
	}
	for (reg = 0x00; reg < ak->total_regs; reg++)
		if (reg != 0x01)
			FUNC1(ak, 0, reg,
					  FUNC0(ak, 0, reg));
	FUNC1(ak, 0, 0x01, 0x01); /* un-reset, unmute */
}