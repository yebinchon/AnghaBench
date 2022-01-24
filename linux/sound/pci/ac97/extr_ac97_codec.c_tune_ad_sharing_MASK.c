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
struct snd_ac97 {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_AD_SERIAL_CFG ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ac97*,char*) ; 
 unsigned short FUNC1 (struct snd_ac97*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ac97*,int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static int FUNC3(struct snd_ac97 *ac97)
{
	unsigned short scfg;
	if ((ac97->id & 0xffffff00) != 0x41445300) {
		FUNC0(ac97, "ac97_quirk AD_SHARING is only for AD codecs\n");
		return -EINVAL;
	}
	/* Turn on OMS bit to route microphone to back panel */
	scfg = FUNC1(ac97, AC97_AD_SERIAL_CFG);
	FUNC2(ac97, AC97_AD_SERIAL_CFG, scfg | 0x0200);
	return 0;
}