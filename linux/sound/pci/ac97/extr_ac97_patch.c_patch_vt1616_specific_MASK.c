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
struct TYPE_2__ {int /*<<< orphan*/ * p; } ;
struct snd_kcontrol {TYPE_1__ tlv; } ;
struct snd_ac97 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int FUNC1 (struct snd_ac97*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  slave_sws_vt1616 ; 
 int /*<<< orphan*/  slave_vols_vt1616 ; 
 int FUNC2 (struct snd_ac97*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * snd_ac97_controls_vt1616 ; 
 struct snd_kcontrol* FUNC3 (struct snd_ac97*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ac97*,char*,char*) ; 
 scalar_t__ FUNC5 (struct snd_ac97*,int,int) ; 

__attribute__((used)) static int FUNC6(struct snd_ac97 * ac97)
{
	struct snd_kcontrol *kctl;
	int err;

	if (FUNC5(ac97, 0x5a, 9))
		if ((err = FUNC1(ac97, &snd_ac97_controls_vt1616[0], 1)) < 0)
			return err;
	if ((err = FUNC1(ac97, &snd_ac97_controls_vt1616[1], FUNC0(snd_ac97_controls_vt1616) - 1)) < 0)
		return err;

	/* There is already a misnamed master switch.  Rename it.  */
	kctl = FUNC3(ac97, "Master Playback Volume");
	if (!kctl)
		return -EINVAL;

	FUNC4(ac97, "Master Playback", "Front Playback");

	err = FUNC2(ac97, "Master Playback Volume",
				   kctl->tlv.p, slave_vols_vt1616);
	if (err < 0)
		return err;

	err = FUNC2(ac97, "Master Playback Switch",
				   NULL, slave_sws_vt1616);
	if (err < 0)
		return err;

	return 0;
}