#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_interwave {int dummy; } ;
struct snd_i2c_bus {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; } ;
struct snd_gus_card {int interwave; unsigned char revision; TYPE_2__ gf1; TYPE_1__* card; int /*<<< orphan*/  reg_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  shortname; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SNDRV_GF1_GB_RESET ; 
 int /*<<< orphan*/  SNDRV_GF1_GB_VERSION_NUMBER ; 
 int FUNC0 (struct snd_gus_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_gus_card*,int /*<<< orphan*/ ,int) ; 
 unsigned char FUNC2 (struct snd_gus_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_gus_card*,int /*<<< orphan*/ ,unsigned char) ; 
 int FUNC4 (struct snd_interwave*,struct snd_gus_card*,int,struct snd_i2c_bus**) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct snd_interwave *iwcard,
				struct snd_gus_card *gus,
				int dev
#ifdef SNDRV_STB
				, struct snd_i2c_bus **rbus
#endif
				          )
{
	unsigned long flags;
	unsigned char rev1, rev2;
	int d;

	FUNC1(gus, SNDRV_GF1_GB_RESET, 0);	/* reset GF1 */
	if (((d = FUNC0(gus, SNDRV_GF1_GB_RESET)) & 0x07) != 0) {
		FUNC5("[0x%lx] check 1 failed - 0x%x\n", gus->gf1.port, d);
		return -ENODEV;
	}
	FUNC9(160);
	FUNC1(gus, SNDRV_GF1_GB_RESET, 1);	/* release reset */
	FUNC9(160);
	if (((d = FUNC0(gus, SNDRV_GF1_GB_RESET)) & 0x07) != 1) {
		FUNC5("[0x%lx] check 2 failed - 0x%x\n", gus->gf1.port, d);
		return -ENODEV;
	}
	FUNC6(&gus->reg_lock, flags);
	rev1 = FUNC2(gus, SNDRV_GF1_GB_VERSION_NUMBER);
	FUNC3(gus, SNDRV_GF1_GB_VERSION_NUMBER, ~rev1);
	rev2 = FUNC2(gus, SNDRV_GF1_GB_VERSION_NUMBER);
	FUNC3(gus, SNDRV_GF1_GB_VERSION_NUMBER, rev1);
	FUNC7(&gus->reg_lock, flags);
	FUNC5("[0x%lx] InterWave check - rev1=0x%x, rev2=0x%x\n", gus->gf1.port, rev1, rev2);
	if ((rev1 & 0xf0) == (rev2 & 0xf0) &&
	    (rev1 & 0x0f) != (rev2 & 0x0f)) {
		FUNC5("[0x%lx] InterWave check - passed\n", gus->gf1.port);
		gus->interwave = 1;
		FUNC8(gus->card->shortname, "AMD InterWave");
		gus->revision = rev1 >> 4;
#ifndef SNDRV_STB
		return 0;	/* ok.. We have an InterWave board */
#else
		return snd_interwave_detect_stb(iwcard, gus, dev, rbus);
#endif
	}
	FUNC5("[0x%lx] InterWave check - failed\n", gus->gf1.port);
	return -ENODEV;
}