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
struct snd_kcontrol {int dummy; } ;
struct hda_vmaster_mute_hook {int /*<<< orphan*/  sw_kctl; int /*<<< orphan*/  mute_mode; struct hda_codec* codec; int /*<<< orphan*/  hook; } ;
struct hda_codec {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HDA_VMUTE_FOLLOW_MASTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hda_vmaster_mute_hook*) ; 
 struct snd_kcontrol* FUNC1 (int /*<<< orphan*/ *,struct hda_vmaster_mute_hook*) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,struct snd_kcontrol*) ; 
 int /*<<< orphan*/  vmaster_hook ; 
 int /*<<< orphan*/  vmaster_mute_mode ; 

int FUNC3(struct hda_codec *codec,
			     struct hda_vmaster_mute_hook *hook,
			     bool expose_enum_ctl)
{
	struct snd_kcontrol *kctl;

	if (!hook->hook || !hook->sw_kctl)
		return 0;
	hook->codec = codec;
	hook->mute_mode = HDA_VMUTE_FOLLOW_MASTER;
	FUNC0(hook->sw_kctl, vmaster_hook, hook);
	if (!expose_enum_ctl)
		return 0;
	kctl = FUNC1(&vmaster_mute_mode, hook);
	if (!kctl)
		return -ENOMEM;
	return FUNC2(codec, 0, kctl);
}