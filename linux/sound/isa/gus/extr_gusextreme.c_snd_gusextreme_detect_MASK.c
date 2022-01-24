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
struct TYPE_2__ {int port; } ;
struct snd_gus_card {TYPE_1__ gf1; } ;
struct snd_es1688 {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  mixer_lock; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct snd_es1688*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INIT1 ; 
 int /*<<< orphan*/  SNDRV_GF1_GB_RESET ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_es1688*,int,int) ; 
 unsigned char FUNC3 (struct snd_gus_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_gus_card*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct snd_gus_card *gus,
				 struct snd_es1688 *es1688)
{
	unsigned long flags;
	unsigned char d;

	/*
	 * This is main stuff - enable access to GF1 chip...
	 * I'm not sure, if this will work for card which have
	 * ES1688 chip in another place than 0x220.
         *
         * I used reverse-engineering in DOSEMU. [--jk]
	 *
	 * ULTRINIT.EXE:
	 * 0x230 = 0,2,3
	 * 0x240 = 2,0,1
	 * 0x250 = 2,0,3
	 * 0x260 = 2,2,1
	 */

	FUNC6(&es1688->mixer_lock, flags);
	FUNC2(es1688, 0x40, 0x0b);	/* don't change!!! */
	FUNC7(&es1688->mixer_lock, flags);

	FUNC6(&es1688->reg_lock, flags);
	FUNC1(gus->gf1.port & 0x040 ? 2 : 0, FUNC0(es1688, INIT1));
	FUNC1(0, 0x201);
	FUNC1(gus->gf1.port & 0x020 ? 2 : 0, FUNC0(es1688, INIT1));
	FUNC1(0, 0x201);
	FUNC1(gus->gf1.port & 0x010 ? 3 : 1, FUNC0(es1688, INIT1));
	FUNC7(&es1688->reg_lock, flags);

	FUNC8(100);

	FUNC4(gus, SNDRV_GF1_GB_RESET, 0);	/* reset GF1 */
	if (((d = FUNC3(gus, SNDRV_GF1_GB_RESET)) & 0x07) != 0) {
		FUNC5("[0x%lx] check 1 failed - 0x%x\n", gus->gf1.port, d);
		return -EIO;
	}
	FUNC8(160);
	FUNC4(gus, SNDRV_GF1_GB_RESET, 1);	/* release reset */
	FUNC8(160);
	if (((d = FUNC3(gus, SNDRV_GF1_GB_RESET)) & 0x07) != 1) {
		FUNC5("[0x%lx] check 2 failed - 0x%x\n", gus->gf1.port, d);
		return -EIO;
	}

	return 0;
}