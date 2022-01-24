#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {unsigned int* item; } ;
struct TYPE_6__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_8__ {scalar_t__ line_out_type; } ;
struct TYPE_7__ {scalar_t__* hp_out_nid; } ;
struct hda_gen_spec {unsigned int indep_hp_enabled; int /*<<< orphan*/  pcm_mutex; scalar_t__ alt_dac_nid; int /*<<< orphan*/ * aamix_out_paths; int /*<<< orphan*/ * hp_paths; int /*<<< orphan*/  aamix_mode; TYPE_4__ autocfg; int /*<<< orphan*/ * out_paths; scalar_t__ have_aamix_ctl; TYPE_3__ multiout; scalar_t__* private_dac_nids; scalar_t__ active_streams; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 scalar_t__ AUTO_PIN_HP_OUT ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct hda_codec* FUNC3 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
			struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC3(kcontrol);
	struct hda_gen_spec *spec = codec->spec;
	unsigned int select = ucontrol->value.enumerated.item[0];
	int ret = 0;

	FUNC1(&spec->pcm_mutex);
	if (spec->active_streams) {
		ret = -EBUSY;
		goto unlock;
	}

	if (spec->indep_hp_enabled != select) {
		hda_nid_t *dacp;
		if (spec->autocfg.line_out_type == AUTO_PIN_HP_OUT)
			dacp = &spec->private_dac_nids[0];
		else
			dacp = &spec->multiout.hp_out_nid[0];

		/* update HP aamix paths in case it conflicts with indep HP */
		if (spec->have_aamix_ctl) {
			if (spec->autocfg.line_out_type == AUTO_PIN_HP_OUT)
				FUNC4(codec, spec->aamix_mode,
						   spec->out_paths[0],
						   spec->aamix_out_paths[0],
						   spec->autocfg.line_out_type);
			else
				FUNC4(codec, spec->aamix_mode,
						   spec->hp_paths[0],
						   spec->aamix_out_paths[1],
						   AUTO_PIN_HP_OUT);
		}

		spec->indep_hp_enabled = select;
		if (spec->indep_hp_enabled)
			*dacp = 0;
		else
			*dacp = spec->alt_dac_nid;

		FUNC0(codec, NULL);
		ret = 1;
	}
 unlock:
	FUNC2(&spec->pcm_mutex);
	return ret;
}