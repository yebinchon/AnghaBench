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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int /*<<< orphan*/  rates; int /*<<< orphan*/  formats; int /*<<< orphan*/  channels_max; int /*<<< orphan*/  channels_min; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct hdmi_eld {int /*<<< orphan*/  info; scalar_t__ eld_valid; } ;
struct hdmi_spec_per_pin {struct hdmi_eld sink_eld; int /*<<< orphan*/  mux_idx; int /*<<< orphan*/  pin_nid; int /*<<< orphan*/  dev_id; int /*<<< orphan*/  cvt_nid; } ;
struct hdmi_spec_per_cvt {int assigned; int /*<<< orphan*/  maxbps; int /*<<< orphan*/  formats; int /*<<< orphan*/  rates; int /*<<< orphan*/  channels_max; int /*<<< orphan*/  channels_min; int /*<<< orphan*/  cvt_nid; } ;
struct hdmi_spec {int /*<<< orphan*/  pcm_lock; int /*<<< orphan*/  pcm_in_use; int /*<<< orphan*/  dyn_pcm_assign; } ;
struct hda_pcm_stream {int /*<<< orphan*/  rates; int /*<<< orphan*/  formats; int /*<<< orphan*/  channels_max; int /*<<< orphan*/  channels_min; int /*<<< orphan*/  nid; int /*<<< orphan*/  maxbps; } ;
struct hda_codec {struct hdmi_spec* spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_CONNECT_SEL ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 struct hdmi_spec_per_cvt* FUNC0 (struct hdmi_spec*,int) ; 
 struct hdmi_spec_per_pin* FUNC1 (struct hdmi_spec*,int) ; 
 int FUNC2 (struct hda_codec*,int,int*) ; 
 int FUNC3 (struct hda_pcm_stream*,struct hda_codec*,struct snd_pcm_substream*) ; 
 int FUNC4 (struct hda_codec*,struct hda_pcm_stream*) ; 
 int FUNC5 (struct hda_codec*,struct hda_pcm_stream*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*,struct hdmi_spec_per_pin*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct hda_codec*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct hda_pcm_stream*) ; 
 int /*<<< orphan*/  FUNC16 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  static_hdmi_pcm ; 

__attribute__((used)) static int FUNC17(struct hda_pcm_stream *hinfo,
			 struct hda_codec *codec,
			 struct snd_pcm_substream *substream)
{
	struct hdmi_spec *spec = codec->spec;
	struct snd_pcm_runtime *runtime = substream->runtime;
	int pin_idx, cvt_idx, pcm_idx;
	struct hdmi_spec_per_pin *per_pin;
	struct hdmi_eld *eld;
	struct hdmi_spec_per_cvt *per_cvt = NULL;
	int err;

	/* Validate hinfo */
	pcm_idx = FUNC4(codec, hinfo);
	if (pcm_idx < 0)
		return -EINVAL;

	FUNC6(&spec->pcm_lock);
	pin_idx = FUNC5(codec, hinfo);
	if (!spec->dyn_pcm_assign) {
		if (FUNC10(pin_idx < 0)) {
			err = -EINVAL;
			goto unlock;
		}
	} else {
		/* no pin is assigned to the PCM
		 * PA need pcm open successfully when probe
		 */
		if (pin_idx < 0) {
			err = FUNC3(hinfo, codec, substream);
			goto unlock;
		}
	}

	err = FUNC2(codec, pin_idx, &cvt_idx);
	if (err < 0)
		goto unlock;

	per_cvt = FUNC0(spec, cvt_idx);
	/* Claim converter */
	per_cvt->assigned = 1;

	FUNC9(pcm_idx, &spec->pcm_in_use);
	per_pin = FUNC1(spec, pin_idx);
	per_pin->cvt_nid = per_cvt->cvt_nid;
	hinfo->nid = per_cvt->cvt_nid;

	FUNC12(codec, per_pin->pin_nid, per_pin->dev_id);
	FUNC11(codec, per_pin->pin_nid, 0,
			    AC_VERB_SET_CONNECT_SEL,
			    per_pin->mux_idx);

	/* configure unused pins to choose other converters */
	FUNC8(codec, per_pin, 0);

	FUNC13(codec, pcm_idx, per_cvt->cvt_nid);

	/* Initially set the converter's capabilities */
	hinfo->channels_min = per_cvt->channels_min;
	hinfo->channels_max = per_cvt->channels_max;
	hinfo->rates = per_cvt->rates;
	hinfo->formats = per_cvt->formats;
	hinfo->maxbps = per_cvt->maxbps;

	eld = &per_pin->sink_eld;
	/* Restrict capabilities by ELD if this isn't disabled */
	if (!static_hdmi_pcm && eld->eld_valid) {
		FUNC15(&eld->info, hinfo);
		if (hinfo->channels_min > hinfo->channels_max ||
		    !hinfo->rates || !hinfo->formats) {
			per_cvt->assigned = 0;
			hinfo->nid = 0;
			FUNC14(codec, pcm_idx);
			err = -ENODEV;
			goto unlock;
		}
	}

	/* Store the updated parameters */
	runtime->hw.channels_min = hinfo->channels_min;
	runtime->hw.channels_max = hinfo->channels_max;
	runtime->hw.formats = hinfo->formats;
	runtime->hw.rates = hinfo->rates;

	FUNC16(substream->runtime, 0,
				   SNDRV_PCM_HW_PARAM_CHANNELS, 2);
 unlock:
	FUNC7(&spec->pcm_lock);
	return err;
}