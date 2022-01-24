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
 int /*<<< orphan*/  AC97_SIGMATEL_ANALOG ; 
 int /*<<< orphan*/  AC97_SIGMATEL_DAC2INVERT ; 
 int FUNC0 (struct snd_ac97*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct snd_ac97*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_ac97_sigmatel_4speaker ; 
 int /*<<< orphan*/ * snd_ac97_sigmatel_controls ; 
 int /*<<< orphan*/  snd_ac97_sigmatel_phaseinvert ; 
 scalar_t__ FUNC2 (struct snd_ac97*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ac97*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct snd_ac97 * ac97)
{
	int err;

	FUNC3(ac97, AC97_SIGMATEL_ANALOG, FUNC1(ac97, AC97_SIGMATEL_ANALOG) & ~0x0003);
	if (FUNC2(ac97, AC97_SIGMATEL_ANALOG, 1))
		if ((err = FUNC0(ac97, &snd_ac97_sigmatel_controls[0], 1)) < 0)
			return err;
	if (FUNC2(ac97, AC97_SIGMATEL_ANALOG, 0))
		if ((err = FUNC0(ac97, &snd_ac97_sigmatel_controls[1], 1)) < 0)
			return err;
	if (FUNC2(ac97, AC97_SIGMATEL_DAC2INVERT, 2))
		if ((err = FUNC0(ac97, &snd_ac97_sigmatel_4speaker, 1)) < 0)
			return err;
	if (FUNC2(ac97, AC97_SIGMATEL_DAC2INVERT, 3))
		if ((err = FUNC0(ac97, &snd_ac97_sigmatel_phaseinvert, 1)) < 0)
			return err;
	return 0;
}