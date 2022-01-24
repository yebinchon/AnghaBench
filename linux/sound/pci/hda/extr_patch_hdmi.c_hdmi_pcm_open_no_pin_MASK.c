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
struct hdmi_spec_per_cvt {int assigned; int /*<<< orphan*/  maxbps; int /*<<< orphan*/  formats; int /*<<< orphan*/  rates; int /*<<< orphan*/  channels_max; int /*<<< orphan*/  channels_min; int /*<<< orphan*/  cvt_nid; } ;
struct hdmi_spec {int /*<<< orphan*/  pcm_in_use; } ;
struct hda_pcm_stream {int /*<<< orphan*/  rates; int /*<<< orphan*/  formats; int /*<<< orphan*/  channels_max; int /*<<< orphan*/  channels_min; int /*<<< orphan*/  maxbps; int /*<<< orphan*/  nid; } ;
struct hda_codec {struct hdmi_spec* spec; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 struct hdmi_spec_per_cvt* FUNC0 (struct hdmi_spec*,int) ; 
 int FUNC1 (struct hda_codec*,int,int*) ; 
 int FUNC2 (struct hda_codec*,struct hda_pcm_stream*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct hda_pcm_stream *hinfo,
			 struct hda_codec *codec,
			 struct snd_pcm_substream *substream)
{
	struct hdmi_spec *spec = codec->spec;
	struct snd_pcm_runtime *runtime = substream->runtime;
	int cvt_idx, pcm_idx;
	struct hdmi_spec_per_cvt *per_cvt = NULL;
	int err;

	pcm_idx = FUNC2(codec, hinfo);
	if (pcm_idx < 0)
		return -EINVAL;

	err = FUNC1(codec, -1, &cvt_idx);
	if (err)
		return err;

	per_cvt = FUNC0(spec, cvt_idx);
	per_cvt->assigned = 1;
	hinfo->nid = per_cvt->cvt_nid;

	FUNC3(codec, NULL, per_cvt->cvt_nid);

	FUNC4(pcm_idx, &spec->pcm_in_use);
	/* todo: setup spdif ctls assign */

	/* Initially set the converter's capabilities */
	hinfo->channels_min = per_cvt->channels_min;
	hinfo->channels_max = per_cvt->channels_max;
	hinfo->rates = per_cvt->rates;
	hinfo->formats = per_cvt->formats;
	hinfo->maxbps = per_cvt->maxbps;

	/* Store the updated parameters */
	runtime->hw.channels_min = hinfo->channels_min;
	runtime->hw.channels_max = hinfo->channels_max;
	runtime->hw.formats = hinfo->formats;
	runtime->hw.rates = hinfo->rates;

	FUNC5(substream->runtime, 0,
				   SNDRV_PCM_HW_PARAM_CHANNELS, 2);
	return 0;
}