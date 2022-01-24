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
struct snd_kcontrol_new {int /*<<< orphan*/  index; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_card {int dummy; } ;
struct snd_ac97 {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 struct snd_kcontrol_new FUNC0 (char*,int,int,int /*<<< orphan*/ ,unsigned int,int) ; 
 unsigned int AC97_MUTE_MASK_STEREO ; 
 int AC97_PCM ; 
 int AC97_PHONE ; 
 struct snd_kcontrol_new FUNC1 (char*,int,int /*<<< orphan*/ ,unsigned int,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  db_scale_5bit_12db_max ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_kcontrol*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct snd_ac97*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ac97*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_ac97*,int,unsigned int) ; 
 int FUNC7 (struct snd_card*,struct snd_kcontrol*) ; 
 struct snd_kcontrol* FUNC8 (struct snd_kcontrol_new*,struct snd_ac97*) ; 

__attribute__((used)) static int FUNC9(struct snd_card *card, char *name, int reg, unsigned int lo_max,
			     unsigned int hi_max, struct snd_ac97 *ac97)
{
	int err;
	struct snd_kcontrol *kctl;

	if (! FUNC5(ac97, reg))
		return 0;
	if (hi_max) {
		/* invert */
		struct snd_kcontrol_new tmp = FUNC0(name, reg, 8, 0, lo_max, 1);
		tmp.index = ac97->num;
		kctl = FUNC8(&tmp, ac97);
	} else {
		/* invert */
		struct snd_kcontrol_new tmp = FUNC1(name, reg, 0, lo_max, 1);
		tmp.index = ac97->num;
		kctl = FUNC8(&tmp, ac97);
	}
	if (!kctl)
		return -ENOMEM;
	if (reg >= AC97_PHONE && reg <= AC97_PCM)
		FUNC3(kctl, db_scale_5bit_12db_max);
	else
		FUNC3(kctl, FUNC2(lo_max));
	err = FUNC7(card, kctl);
	if (err < 0)
		return err;
	FUNC6(
		ac97, reg,
		(FUNC4(ac97, reg) & AC97_MUTE_MASK_STEREO)
		| lo_max | (hi_max << 8)
	);
	return 0;
}