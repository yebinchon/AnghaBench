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
typedef  scalar_t__ u32 ;
struct snd_ac97 {struct nm256* private_data; } ;
struct nm256 {unsigned short* ac97_regs; TYPE_1__* card; scalar_t__ mixer_base; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (unsigned short) ; 
 scalar_t__ FUNC3 (struct nm256*) ; 
 int /*<<< orphan*/  FUNC4 (struct nm256*,scalar_t__,unsigned short) ; 

__attribute__((used)) static void
FUNC5(struct snd_ac97 *ac97,
		     unsigned short reg, unsigned short val)
{
	struct nm256 *chip = ac97->private_data;
	int tries = 2;
	int idx = FUNC2(reg);
	u32 base;

	if (idx < 0)
		return;

	base = chip->mixer_base;

	FUNC3(chip);

	/* Wait for the write to take, too. */
	while (tries-- > 0) {
		FUNC4(chip, base + reg, val);
		FUNC1(1);  /* a little delay here seems better.. */
		if (FUNC3(chip)) {
			/* successful write: set cache */
			chip->ac97_regs[idx] = val;
			return;
		}
	}
	FUNC0(chip->card->dev, "nm256: ac97 codec not ready..\n");
}