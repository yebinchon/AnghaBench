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
struct snd_kcontrol {unsigned long private_value; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct hda_codec {int /*<<< orphan*/  control_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 struct hda_codec* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
				  struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC3(kcontrol);
	unsigned long pval;
	int err;

	FUNC0(&codec->control_mutex);
	pval = kcontrol->private_value;
	kcontrol->private_value = (pval & ~0xff) | 0x0f;
	err = FUNC2(kcontrol, ucontrol);
	if (err >= 0) {
		kcontrol->private_value = (pval & ~0xff) | 0x10;
		err = FUNC2(kcontrol, ucontrol);
	}
	kcontrol->private_value = pval;
	FUNC1(&codec->control_mutex);
	return err;
}