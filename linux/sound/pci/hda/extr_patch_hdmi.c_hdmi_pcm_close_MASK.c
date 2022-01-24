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
struct snd_pcm_substream {int dummy; } ;
struct hdmi_spec_per_pin {int chmap_set; int setup; int /*<<< orphan*/  lock; scalar_t__ channels; int /*<<< orphan*/  chmap; int /*<<< orphan*/  pin_nid; } ;
struct hdmi_spec_per_cvt {scalar_t__ assigned; } ;
struct hdmi_spec {int /*<<< orphan*/  pcm_lock; scalar_t__ dyn_pin_out; scalar_t__ dyn_pcm_assign; int /*<<< orphan*/  pcm_in_use; } ;
struct hda_pcm_stream {scalar_t__ nid; } ;
struct hda_codec {struct hdmi_spec* spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_GET_PIN_WIDGET_CONTROL ; 
 int /*<<< orphan*/  AC_VERB_SET_PIN_WIDGET_CONTROL ; 
 int EINVAL ; 
 int PIN_OUT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct hda_codec*,scalar_t__) ; 
 struct hdmi_spec_per_cvt* FUNC2 (struct hdmi_spec*,int) ; 
 struct hdmi_spec_per_pin* FUNC3 (struct hdmi_spec*,int) ; 
 int FUNC4 (struct hda_codec*,struct hda_pcm_stream*) ; 
 int FUNC5 (struct hda_codec*,struct hda_pcm_stream*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct hda_codec*,int) ; 

__attribute__((used)) static int FUNC13(struct hda_pcm_stream *hinfo,
			  struct hda_codec *codec,
			  struct snd_pcm_substream *substream)
{
	struct hdmi_spec *spec = codec->spec;
	int cvt_idx, pin_idx, pcm_idx;
	struct hdmi_spec_per_cvt *per_cvt;
	struct hdmi_spec_per_pin *per_pin;
	int pinctl;
	int err = 0;

	if (hinfo->nid) {
		pcm_idx = FUNC4(codec, hinfo);
		if (FUNC9(pcm_idx < 0))
			return -EINVAL;
		cvt_idx = FUNC1(codec, hinfo->nid);
		if (FUNC9(cvt_idx < 0))
			return -EINVAL;
		per_cvt = FUNC2(spec, cvt_idx);

		FUNC9(!per_cvt->assigned);
		per_cvt->assigned = 0;
		hinfo->nid = 0;

		FUNC7(&spec->pcm_lock);
		FUNC12(codec, pcm_idx);
		FUNC0(pcm_idx, &spec->pcm_in_use);
		pin_idx = FUNC5(codec, hinfo);
		if (spec->dyn_pcm_assign && pin_idx < 0)
			goto unlock;

		if (FUNC9(pin_idx < 0)) {
			err = -EINVAL;
			goto unlock;
		}
		per_pin = FUNC3(spec, pin_idx);

		if (spec->dyn_pin_out) {
			pinctl = FUNC10(codec, per_pin->pin_nid, 0,
					AC_VERB_GET_PIN_WIDGET_CONTROL, 0);
			FUNC11(codec, per_pin->pin_nid, 0,
					    AC_VERB_SET_PIN_WIDGET_CONTROL,
					    pinctl & ~PIN_OUT);
		}

		FUNC7(&per_pin->lock);
		per_pin->chmap_set = false;
		FUNC6(per_pin->chmap, 0, sizeof(per_pin->chmap));

		per_pin->setup = false;
		per_pin->channels = 0;
		FUNC8(&per_pin->lock);
	unlock:
		FUNC8(&spec->pcm_lock);
	}

	return err;
}