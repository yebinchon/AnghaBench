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
struct hdmi_spec_per_pin {int /*<<< orphan*/ * mux_nids; int /*<<< orphan*/  pin_nid; } ;
struct hdmi_spec {int pcm_used; int num_pins; int /*<<< orphan*/  chmap; int /*<<< orphan*/ * cvt_nids; scalar_t__ dyn_pcm_assign; int /*<<< orphan*/  pcm_bitmap; } ;
struct hda_pcm {int device; int /*<<< orphan*/  pcm; } ;
struct hda_codec {struct hdmi_spec* spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_PCM_TYPE_HDMI ; 
 int SNDRV_PCM_INVALID_DEVICE ; 
 int FUNC0 (struct hda_codec*,int) ; 
 struct hda_pcm* FUNC1 (struct hdmi_spec*,int) ; 
 struct hdmi_spec_per_pin* FUNC2 (struct hdmi_spec*,int) ; 
 int FUNC3 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hdmi_spec_per_pin*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct hda_codec *codec)
{
	struct hdmi_spec *spec = codec->spec;
	int dev, err;
	int pin_idx, pcm_idx;

	for (pcm_idx = 0; pcm_idx < spec->pcm_used; pcm_idx++) {
		if (!FUNC1(spec, pcm_idx)->pcm) {
			/* no PCM: mark this for skipping permanently */
			FUNC5(pcm_idx, &spec->pcm_bitmap);
			continue;
		}

		err = FUNC0(codec, pcm_idx);
		if (err < 0)
			return err;

		/* create the spdif for each pcm
		 * pin will be bound when monitor is connected
		 */
		if (spec->dyn_pcm_assign)
			err = FUNC6(codec,
					  0, spec->cvt_nids[0],
					  HDA_PCM_TYPE_HDMI);
		else {
			struct hdmi_spec_per_pin *per_pin =
				FUNC2(spec, pcm_idx);
			err = FUNC6(codec,
						  per_pin->pin_nid,
						  per_pin->mux_nids[0],
						  HDA_PCM_TYPE_HDMI);
		}
		if (err < 0)
			return err;
		FUNC7(codec, pcm_idx);

		dev = FUNC1(spec, pcm_idx)->device;
		if (dev != SNDRV_PCM_INVALID_DEVICE) {
			/* add control for ELD Bytes */
			err = FUNC3(codec, pcm_idx, dev);
			if (err < 0)
				return err;
		}
	}

	for (pin_idx = 0; pin_idx < spec->num_pins; pin_idx++) {
		struct hdmi_spec_per_pin *per_pin = FUNC2(spec, pin_idx);

		FUNC4(per_pin, 0);
	}

	/* add channel maps */
	for (pcm_idx = 0; pcm_idx < spec->pcm_used; pcm_idx++) {
		struct hda_pcm *pcm;

		pcm = FUNC1(spec, pcm_idx);
		if (!pcm || !pcm->pcm)
			break;
		err = FUNC8(pcm->pcm, pcm_idx, &spec->chmap);
		if (err < 0)
			return err;
	}

	return 0;
}