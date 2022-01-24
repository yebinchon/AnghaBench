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
struct wtm_spec {int /*<<< orphan*/  mute_mutex; } ;
struct snd_ice1712 {struct wtm_spec* spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  STAC946X_MASTER_CLOCKING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*,int,unsigned short*) ; 
 unsigned char FUNC4 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ice1712*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct snd_ice1712 *ice, unsigned int rate)
{
	unsigned char old, new;
	unsigned short int changed;
	struct wtm_spec *spec = ice->spec;

	if (rate == 0)  /* no hint - S/PDIF input is master, simply return */
		return;
	else if (rate <= 48000)
		new = 0x08;     /* 256x, base rate mode */
	else if (rate <= 96000)
		new = 0x11;     /* 256x, mid rate mode */
	else
		new = 0x12;     /* 128x, high rate mode */

	old = FUNC4(ice, STAC946X_MASTER_CLOCKING);
	if (old == new)
		return;
	/* change detected, setting master clock, muting first */
	/* due to possible conflicts with mute controls - mutexing */
	FUNC0(&spec->mute_mutex);
	/* we have to remember current mute status for each DAC */
	changed = 0xFFFF;
	FUNC3(ice, 0, &changed);
	/*printk(KERN_DEBUG "Rate change: %d, new MC: 0x%02x\n", rate, new);*/
	FUNC5(ice, STAC946X_MASTER_CLOCKING, new);
	FUNC2(ice, STAC946X_MASTER_CLOCKING, new);
	FUNC6(10);
	/* unmuting - only originally unmuted dacs -
	* i.e. those changed when muting */
	FUNC3(ice, 1, &changed);
	FUNC1(&spec->mute_mutex);
}