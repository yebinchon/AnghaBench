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
struct hdmi_eld {int eld_valid; scalar_t__ monitor_present; int /*<<< orphan*/  info; int /*<<< orphan*/  eld_size; int /*<<< orphan*/  eld_buffer; } ;
struct hdmi_spec_per_pin {int pcm_idx; int /*<<< orphan*/  non_pcm; scalar_t__ setup; struct hdmi_eld sink_eld; } ;
struct hdmi_spec {scalar_t__ dyn_pcm_assign; } ;
struct hda_codec {int /*<<< orphan*/  card; struct hdmi_spec* spec; } ;
struct TYPE_4__ {TYPE_1__* eld_ctl; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int SNDRV_CTL_EVENT_MASK_INFO ; 
 int SNDRV_CTL_EVENT_MASK_VALUE ; 
 TYPE_2__* FUNC0 (struct hdmi_spec*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi_spec*,struct hdmi_spec_per_pin*) ; 
 int /*<<< orphan*/  FUNC2 (struct hdmi_spec*,struct hdmi_spec_per_pin*) ; 
 int /*<<< orphan*/  FUNC3 (struct hdmi_spec*,struct hdmi_spec_per_pin*) ; 
 int /*<<< orphan*/  FUNC4 (struct hdmi_spec*,struct hdmi_spec_per_pin*) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,struct hdmi_spec_per_pin*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*,struct hdmi_spec_per_pin*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct hda_codec*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC11(struct hda_codec *codec,
		       struct hdmi_spec_per_pin *per_pin,
		       struct hdmi_eld *eld)
{
	struct hdmi_eld *pin_eld = &per_pin->sink_eld;
	struct hdmi_spec *spec = codec->spec;
	bool old_eld_valid = pin_eld->eld_valid;
	bool eld_changed;
	int pcm_idx;

	/* for monitor disconnection, save pcm_idx firstly */
	pcm_idx = per_pin->pcm_idx;
	if (spec->dyn_pcm_assign) {
		if (eld->eld_valid) {
			FUNC1(spec, per_pin);
			FUNC4(spec, per_pin);
		} else {
			FUNC3(spec, per_pin);
			FUNC2(spec, per_pin);
		}
	}
	/* if pcm_idx == -1, it means this is in monitor connection event
	 * we can get the correct pcm_idx now.
	 */
	if (pcm_idx == -1)
		pcm_idx = per_pin->pcm_idx;

	if (eld->eld_valid)
		FUNC10(codec, &eld->info);

	eld_changed = (pin_eld->eld_valid != eld->eld_valid);
	eld_changed |= (pin_eld->monitor_present != eld->monitor_present);
	if (!eld_changed && eld->eld_valid && pin_eld->eld_valid)
		if (pin_eld->eld_size != eld->eld_size ||
		    FUNC6(pin_eld->eld_buffer, eld->eld_buffer,
			   eld->eld_size) != 0)
			eld_changed = true;

	if (eld_changed) {
		pin_eld->monitor_present = eld->monitor_present;
		pin_eld->eld_valid = eld->eld_valid;
		pin_eld->eld_size = eld->eld_size;
		if (eld->eld_valid)
			FUNC7(pin_eld->eld_buffer, eld->eld_buffer,
			       eld->eld_size);
		pin_eld->info = eld->info;
	}

	/*
	 * Re-setup pin and infoframe. This is needed e.g. when
	 * - sink is first plugged-in
	 * - transcoder can change during stream playback on Haswell
	 *   and this can make HW reset converter selection on a pin.
	 */
	if (eld->eld_valid && !old_eld_valid && per_pin->setup) {
		FUNC8(codec, per_pin, 0);
		FUNC5(codec, per_pin, per_pin->non_pcm);
	}

	if (eld_changed && pcm_idx >= 0)
		FUNC9(codec->card,
			       SNDRV_CTL_EVENT_MASK_VALUE |
			       SNDRV_CTL_EVENT_MASK_INFO,
			       &FUNC0(spec, pcm_idx)->eld_ctl->id);
	return eld_changed;
}