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
struct hda_codec {int /*<<< orphan*/  control_mutex; struct ca0132_spec* spec; } ;
struct ca0132_spec {int* vnode_lswitch; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__,int,int /*<<< orphan*/ ,int) ; 
 size_t VNID_AMIC1_ASEL ; 
 scalar_t__ VNID_AMIC1_SEL ; 
 size_t VNID_HP_ASEL ; 
 scalar_t__ VNID_HP_SEL ; 
 size_t VNODE_START_NID ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int FUNC2 (struct hda_codec*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 
 scalar_t__ FUNC5 (struct ca0132_spec*) ; 
 int FUNC6 (struct snd_kcontrol*) ; 
 int FUNC7 (struct snd_kcontrol*) ; 
 scalar_t__ FUNC8 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 struct hda_codec* FUNC12 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC13(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC12(kcontrol);
	hda_nid_t nid = FUNC8(kcontrol);
	hda_nid_t shared_nid = 0;
	bool effective;
	int ret = 0;
	struct ca0132_spec *spec = codec->spec;
	int auto_jack;

	if (nid == VNID_HP_SEL) {
		auto_jack =
			spec->vnode_lswitch[VNID_HP_ASEL - VNODE_START_NID];
		if (!auto_jack) {
			if (FUNC5(spec))
				FUNC1(codec);
			else
				FUNC4(codec);
		}
		return 1;
	}

	if (nid == VNID_AMIC1_SEL) {
		auto_jack =
			spec->vnode_lswitch[VNID_AMIC1_ASEL - VNODE_START_NID];
		if (!auto_jack)
			FUNC3(codec);
		return 1;
	}

	if (nid == VNID_HP_ASEL) {
		if (FUNC5(spec))
			FUNC1(codec);
		else
			FUNC4(codec);
		return 1;
	}

	if (nid == VNID_AMIC1_ASEL) {
		FUNC3(codec);
		return 1;
	}

	/* if effective conditions, then update hw immediately. */
	effective = FUNC2(codec, nid, &shared_nid);
	if (effective) {
		int dir = FUNC7(kcontrol);
		int ch = FUNC6(kcontrol);
		unsigned long pval;

		FUNC9(&codec->control_mutex);
		pval = kcontrol->private_value;
		kcontrol->private_value = FUNC0(shared_nid, ch,
								0, dir);
		ret = FUNC11(kcontrol, ucontrol);
		kcontrol->private_value = pval;
		FUNC10(&codec->control_mutex);
	}

	return ret;
}