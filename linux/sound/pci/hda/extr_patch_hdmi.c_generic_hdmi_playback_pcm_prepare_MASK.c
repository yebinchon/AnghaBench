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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  channels; int /*<<< orphan*/  rate; } ;
struct hdmi_spec_per_pin {int setup; int /*<<< orphan*/  lock; int /*<<< orphan*/  channels; int /*<<< orphan*/  dev_id; int /*<<< orphan*/  pin_nid; } ;
struct TYPE_4__ {int (* setup_stream ) (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ;} ;
struct hdmi_spec {int /*<<< orphan*/  pcm_lock; TYPE_2__ ops; scalar_t__ dyn_pin_out; scalar_t__ dyn_pcm_assign; } ;
struct hda_pcm_stream {int /*<<< orphan*/  nid; } ;
struct hda_codec {TYPE_1__* bus; int /*<<< orphan*/  core; struct hdmi_spec* spec; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;
struct TYPE_3__ {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_GET_PIN_WIDGET_CONTROL ; 
 int /*<<< orphan*/  AC_VERB_SET_PIN_WIDGET_CONTROL ; 
 int /*<<< orphan*/  AC_VERB_SET_STRIPE_CONTROL ; 
 int AC_WCAP_STRIPE ; 
 int EINVAL ; 
 int PIN_OUT ; 
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hda_codec*) ; 
 struct hdmi_spec_per_pin* FUNC2 (struct hdmi_spec*,int) ; 
 int FUNC3 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,struct hdmi_spec_per_pin*,int) ; 
 int FUNC5 (struct hda_codec*,struct hda_pcm_stream*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*,struct hdmi_spec_per_pin*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hda_codec*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC16(struct hda_pcm_stream *hinfo,
					   struct hda_codec *codec,
					   unsigned int stream_tag,
					   unsigned int format,
					   struct snd_pcm_substream *substream)
{
	hda_nid_t cvt_nid = hinfo->nid;
	struct hdmi_spec *spec = codec->spec;
	int pin_idx;
	struct hdmi_spec_per_pin *per_pin;
	hda_nid_t pin_nid;
	struct snd_pcm_runtime *runtime = substream->runtime;
	bool non_pcm;
	int pinctl, stripe;
	int err = 0;

	FUNC6(&spec->pcm_lock);
	pin_idx = FUNC5(codec, hinfo);
	if (spec->dyn_pcm_assign && pin_idx < 0) {
		/* when dyn_pcm_assign and pcm is not bound to a pin
		 * skip pin setup and return 0 to make audio playback
		 * be ongoing
		 */
		FUNC8(codec, NULL, cvt_nid);
		FUNC11(codec, cvt_nid,
					stream_tag, 0, format);
		goto unlock;
	}

	if (FUNC9(pin_idx < 0)) {
		err = -EINVAL;
		goto unlock;
	}
	per_pin = FUNC2(spec, pin_idx);
	pin_nid = per_pin->pin_nid;

	/* Verify pin:cvt selections to avoid silent audio after S3.
	 * After S3, the audio driver restores pin:cvt selections
	 * but this can happen before gfx is ready and such selection
	 * is overlooked by HW. Thus multiple pins can share a same
	 * default convertor and mute control will affect each other,
	 * which can cause a resumed audio playback become silent
	 * after S3.
	 */
	FUNC8(codec, per_pin, 0);

	/* Call sync_audio_rate to set the N/CTS/M manually if necessary */
	/* Todo: add DP1.2 MST audio support later */
	if (FUNC1(codec))
		FUNC14(&codec->core, pin_nid, per_pin->dev_id,
					 runtime->rate);

	non_pcm = FUNC0(codec, cvt_nid);
	FUNC6(&per_pin->lock);
	per_pin->channels = substream->runtime->channels;
	per_pin->setup = true;

	if (FUNC3(codec, cvt_nid) & AC_WCAP_STRIPE) {
		stripe = FUNC13(&codec->bus->core,
							substream);
		FUNC12(codec, cvt_nid, 0,
				    AC_VERB_SET_STRIPE_CONTROL,
				    stripe);
	}

	FUNC4(codec, per_pin, non_pcm);
	FUNC7(&per_pin->lock);
	if (spec->dyn_pin_out) {
		pinctl = FUNC10(codec, pin_nid, 0,
					    AC_VERB_GET_PIN_WIDGET_CONTROL, 0);
		FUNC12(codec, pin_nid, 0,
				    AC_VERB_SET_PIN_WIDGET_CONTROL,
				    pinctl | PIN_OUT);
	}

	/* snd_hda_set_dev_select() has been called before */
	err = spec->ops.setup_stream(codec, cvt_nid, pin_nid,
				 stream_tag, format);
 unlock:
	FUNC7(&spec->pcm_lock);
	return err;
}