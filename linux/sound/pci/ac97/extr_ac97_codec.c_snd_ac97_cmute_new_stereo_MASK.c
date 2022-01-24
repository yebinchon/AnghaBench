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
struct snd_kcontrol_new {int private_value; int /*<<< orphan*/  index; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_card {int dummy; } ;
struct snd_ac97 {int flags; int /*<<< orphan*/  num; } ;

/* Variables and functions */
 struct snd_kcontrol_new FUNC0 (char*,int,int,int,int,int) ; 
 unsigned short AC97_MUTE_MASK_MONO ; 
 unsigned short AC97_MUTE_MASK_STEREO ; 
 struct snd_kcontrol_new FUNC1 (char*,int,int,int,int) ; 
 int AC97_STEREO_MUTES ; 
 unsigned short FUNC2 (struct snd_ac97*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ac97*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ac97*,int,unsigned short) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ac97*,int,unsigned short) ; 
 int FUNC6 (struct snd_card*,struct snd_kcontrol*) ; 
 struct snd_kcontrol* FUNC7 (struct snd_kcontrol_new*,struct snd_ac97*) ; 

__attribute__((used)) static int FUNC8(struct snd_card *card, char *name, int reg,
				     int check_stereo, int check_amix,
				     struct snd_ac97 *ac97)
{
	struct snd_kcontrol *kctl;
	int err;
	unsigned short val, val1, mute_mask;

	if (! FUNC3(ac97, reg))
		return 0;

	mute_mask = AC97_MUTE_MASK_MONO;
	val = FUNC2(ac97, reg);
	if (check_stereo || (ac97->flags & AC97_STEREO_MUTES)) {
		/* check whether both mute bits work */
		val1 = val | AC97_MUTE_MASK_STEREO;
		FUNC4(ac97, reg, val1);
		if (val1 == FUNC2(ac97, reg))
			mute_mask = AC97_MUTE_MASK_STEREO;
	}
	if (mute_mask == AC97_MUTE_MASK_STEREO) {
		struct snd_kcontrol_new tmp = FUNC0(name, reg, 15, 7, 1, 1);
		if (check_amix)
			tmp.private_value |= (1 << 30);
		tmp.index = ac97->num;
		kctl = FUNC7(&tmp, ac97);
	} else {
		struct snd_kcontrol_new tmp = FUNC1(name, reg, 15, 1, 1);
		if (check_amix)
			tmp.private_value |= (1 << 30);
		tmp.index = ac97->num;
		kctl = FUNC7(&tmp, ac97);
	}
	err = FUNC6(card, kctl);
	if (err < 0)
		return err;
	/* mute as default */
	FUNC5(ac97, reg, val | mute_mask);
	return 0;
}