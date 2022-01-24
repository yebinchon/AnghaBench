#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_3__* runtime; } ;
struct hdmi_spec_per_pin {int num_mux_nids; int setup; int mux_idx; int /*<<< orphan*/  channels; int /*<<< orphan*/  pcm_idx; int /*<<< orphan*/  pin_nid; int /*<<< orphan*/  dev_id; int /*<<< orphan*/  cvt_nid; struct hda_codec* codec; } ;
struct hdmi_spec {int /*<<< orphan*/  pcm_in_use; int /*<<< orphan*/  pcm_used; } ;
struct hda_pcm_stream {int /*<<< orphan*/  nid; } ;
struct hda_pcm {TYPE_2__* pcm; struct hda_pcm_stream* stream; } ;
struct hda_codec {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  channels; } ;
struct TYPE_5__ {TYPE_1__* streams; } ;
struct TYPE_4__ {struct snd_pcm_substream* substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_CONNECT_SEL ; 
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 struct hda_pcm* FUNC1 (struct hdmi_spec*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hdmi_spec*,struct hdmi_spec_per_pin*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,struct hdmi_spec_per_pin*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct hdmi_spec *spec,
			   struct hdmi_spec_per_pin *per_pin)
{
	struct hda_codec *codec = per_pin->codec;
	struct hda_pcm *pcm;
	struct hda_pcm_stream *hinfo;
	struct snd_pcm_substream *substream;
	int mux_idx;
	bool non_pcm;

	if (per_pin->pcm_idx >= 0 && per_pin->pcm_idx < spec->pcm_used)
		pcm = FUNC1(spec, per_pin->pcm_idx);
	else
		return;
	if (!pcm->pcm)
		return;
	if (!FUNC7(per_pin->pcm_idx, &spec->pcm_in_use))
		return;

	/* hdmi audio only uses playback and one substream */
	hinfo = pcm->stream;
	substream = pcm->pcm->streams[0].substream;

	per_pin->cvt_nid = hinfo->nid;

	mux_idx = FUNC2(spec, per_pin, hinfo->nid);
	if (mux_idx < per_pin->num_mux_nids) {
		FUNC5(codec, per_pin->pin_nid,
				   per_pin->dev_id);
		FUNC4(codec, per_pin->pin_nid, 0,
				AC_VERB_SET_CONNECT_SEL,
				mux_idx);
	}
	FUNC6(codec, per_pin->pcm_idx, hinfo->nid);

	non_pcm = FUNC0(codec, hinfo->nid);
	if (substream->runtime)
		per_pin->channels = substream->runtime->channels;
	per_pin->setup = true;
	per_pin->mux_idx = mux_idx;

	FUNC3(codec, per_pin, non_pcm);
}