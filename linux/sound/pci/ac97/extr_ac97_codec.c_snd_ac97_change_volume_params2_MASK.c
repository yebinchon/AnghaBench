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
struct snd_ac97 {int dummy; } ;

/* Variables and functions */
 int AC97_MUTE_MASK_STEREO ; 
 unsigned short FUNC0 (struct snd_ac97*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ac97*,int,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ac97*,int,int) ; 

__attribute__((used)) static void FUNC3(struct snd_ac97 * ac97, int reg, int shift, unsigned char *max)
{
	unsigned short val, val1;

	*max = 63;
	val = AC97_MUTE_MASK_STEREO | (0x20 << shift);
	FUNC1(ac97, reg, val);
	val1 = FUNC0(ac97, reg);
	if (val != val1) {
		*max = 31;
	}
	/* reset volume to zero */
	FUNC2(ac97, reg, AC97_MUTE_MASK_STEREO);
}