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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct hdmi_spec_per_cvt {int /*<<< orphan*/  cvt_nid; } ;
struct hdmi_spec {int dummy; } ;
struct hda_spdif_out {int ctls; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_codec {int /*<<< orphan*/  spdif_mutex; scalar_t__ spdif_status_reset; struct hdmi_spec* spec; } ;
struct TYPE_2__ {int channels; } ;

/* Variables and functions */
 int AC_DIG1_ENABLE ; 
 int /*<<< orphan*/  AC_VERB_SET_CHANNEL_STREAMID ; 
 int /*<<< orphan*/  AC_VERB_SET_DIGI_CONVERT_1 ; 
 int /*<<< orphan*/  AC_VERB_SET_DIGI_CONVERT_2 ; 
 int /*<<< orphan*/  AC_VERB_SET_STREAM_FORMAT ; 
 struct hdmi_spec_per_cvt* FUNC0 (struct hdmi_spec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int) ; 
 int /*<<< orphan*/ * nvhdmi_con_nids_7x ; 
 int /*<<< orphan*/  nvhdmi_master_con_nid_7x ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct hda_spdif_out* FUNC5 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hda_pcm_stream *hinfo,
				     struct hda_codec *codec,
				     unsigned int stream_tag,
				     unsigned int format,
				     struct snd_pcm_substream *substream)
{
	int chs;
	unsigned int dataDCC2, channel_id;
	int i;
	struct hdmi_spec *spec = codec->spec;
	struct hda_spdif_out *spdif;
	struct hdmi_spec_per_cvt *per_cvt;

	FUNC1(&codec->spdif_mutex);
	per_cvt = FUNC0(spec, 0);
	spdif = FUNC5(codec, per_cvt->cvt_nid);

	chs = substream->runtime->channels;

	dataDCC2 = 0x2;

	/* turn off SPDIF once; otherwise the IEC958 bits won't be updated */
	if (codec->spdif_status_reset && (spdif->ctls & AC_DIG1_ENABLE))
		FUNC4(codec,
				nvhdmi_master_con_nid_7x,
				0,
				AC_VERB_SET_DIGI_CONVERT_1,
				spdif->ctls & ~AC_DIG1_ENABLE & 0xff);

	/* set the stream id */
	FUNC4(codec, nvhdmi_master_con_nid_7x, 0,
			AC_VERB_SET_CHANNEL_STREAMID, (stream_tag << 4) | 0x0);

	/* set the stream format */
	FUNC4(codec, nvhdmi_master_con_nid_7x, 0,
			AC_VERB_SET_STREAM_FORMAT, format);

	/* turn on again (if needed) */
	/* enable and set the channel status audio/data flag */
	if (codec->spdif_status_reset && (spdif->ctls & AC_DIG1_ENABLE)) {
		FUNC4(codec,
				nvhdmi_master_con_nid_7x,
				0,
				AC_VERB_SET_DIGI_CONVERT_1,
				spdif->ctls & 0xff);
		FUNC4(codec,
				nvhdmi_master_con_nid_7x,
				0,
				AC_VERB_SET_DIGI_CONVERT_2, dataDCC2);
	}

	for (i = 0; i < 4; i++) {
		if (chs == 2)
			channel_id = 0;
		else
			channel_id = i * 2;

		/* turn off SPDIF once;
		 *otherwise the IEC958 bits won't be updated
		 */
		if (codec->spdif_status_reset &&
		(spdif->ctls & AC_DIG1_ENABLE))
			FUNC4(codec,
				nvhdmi_con_nids_7x[i],
				0,
				AC_VERB_SET_DIGI_CONVERT_1,
				spdif->ctls & ~AC_DIG1_ENABLE & 0xff);
		/* set the stream id */
		FUNC4(codec,
				nvhdmi_con_nids_7x[i],
				0,
				AC_VERB_SET_CHANNEL_STREAMID,
				(stream_tag << 4) | channel_id);
		/* set the stream format */
		FUNC4(codec,
				nvhdmi_con_nids_7x[i],
				0,
				AC_VERB_SET_STREAM_FORMAT,
				format);
		/* turn on again (if needed) */
		/* enable and set the channel status audio/data flag */
		if (codec->spdif_status_reset &&
		(spdif->ctls & AC_DIG1_ENABLE)) {
			FUNC4(codec,
					nvhdmi_con_nids_7x[i],
					0,
					AC_VERB_SET_DIGI_CONVERT_1,
					spdif->ctls & 0xff);
			FUNC4(codec,
					nvhdmi_con_nids_7x[i],
					0,
					AC_VERB_SET_DIGI_CONVERT_2, dataDCC2);
		}
	}

	FUNC3(codec, chs);

	FUNC2(&codec->spdif_mutex);
	return 0;
}