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
struct nid_path {int /*<<< orphan*/ * ctls; } ;
struct hda_gen_spec {unsigned long long mute_bits; scalar_t__ keep_vref_in_automute; scalar_t__ auto_mute_via_amp; } ;
struct hda_codec {scalar_t__ power_save_node; struct hda_gen_spec* spec; } ;
typedef  unsigned long long hda_nid_t ;

/* Variables and functions */
 size_t NID_PATH_MUTE_CTL ; 
 unsigned int PIN_HP ; 
 unsigned int PIN_IN ; 
 int FUNC0 (struct hda_codec*,unsigned long long) ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,unsigned long long,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,unsigned long long,int) ; 
 unsigned int FUNC4 (struct hda_codec*,unsigned long long) ; 
 struct nid_path* FUNC5 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,unsigned long long,unsigned int) ; 

__attribute__((used)) static void FUNC7(struct hda_codec *codec, int num_pins, hda_nid_t *pins,
			int *paths, bool mute)
{
	struct hda_gen_spec *spec = codec->spec;
	int i;

	for (i = 0; i < num_pins; i++) {
		hda_nid_t nid = pins[i];
		unsigned int val, oldval;
		if (!nid)
			break;

		oldval = FUNC4(codec, nid);
		if (oldval & PIN_IN)
			continue; /* no mute for inputs */

		if (spec->auto_mute_via_amp) {
			struct nid_path *path;
			hda_nid_t mute_nid;

			path = FUNC5(codec, paths[i]);
			if (!path)
				continue;
			mute_nid = FUNC1(path->ctls[NID_PATH_MUTE_CTL]);
			if (!mute_nid)
				continue;
			if (mute)
				spec->mute_bits |= (1ULL << mute_nid);
			else
				spec->mute_bits &= ~(1ULL << mute_nid);
			continue;
		} else {
			/* don't reset VREF value in case it's controlling
			 * the amp (see alc861_fixup_asus_amp_vref_0f())
			 */
			if (spec->keep_vref_in_automute)
				val = oldval & ~PIN_HP;
			else
				val = 0;
			if (!mute)
				val |= oldval;
			/* here we call update_pin_ctl() so that the pinctl is
			 * changed without changing the pinctl target value;
			 * the original target value will be still referred at
			 * the init / resume again
			 */
			FUNC6(codec, nid, val);
		}

		FUNC3(codec, nid, !mute);
		if (codec->power_save_node) {
			bool on = !mute;
			if (on)
				on = FUNC0(codec, nid);
			FUNC2(codec, nid, on, -1);
		}
	}
}