#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int device; } ;
struct snd_kcontrol {int private_value; TYPE_1__ id; } ;
struct hdmi_spec {int dummy; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
struct TYPE_4__ {struct snd_kcontrol* eld_ctl; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  eld_bytes_ctl ; 
 TYPE_2__* FUNC0 (struct hdmi_spec*,int) ; 
 struct snd_kcontrol* FUNC1 (int /*<<< orphan*/ *,struct hda_codec*) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct hda_codec *codec, int pcm_idx,
			int device)
{
	struct snd_kcontrol *kctl;
	struct hdmi_spec *spec = codec->spec;
	int err;

	kctl = FUNC1(&eld_bytes_ctl, codec);
	if (!kctl)
		return -ENOMEM;
	kctl->private_value = pcm_idx;
	kctl->id.device = device;

	/* no pin nid is associated with the kctl now
	 * tbd: associate pin nid to eld ctl later
	 */
	err = FUNC2(codec, 0, kctl);
	if (err < 0)
		return err;

	FUNC0(spec, pcm_idx)->eld_ctl = kctl;
	return 0;
}