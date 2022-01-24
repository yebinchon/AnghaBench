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
struct hda_spdif_out {int status; } ;
struct hda_multi_out {scalar_t__* dac_nids; scalar_t__ dig_out_used; scalar_t__ const hp_nid; scalar_t__ const* hp_out_nid; int num_dacs; scalar_t__ const* extra_out_nid; int /*<<< orphan*/  no_share_stream; scalar_t__ dig_out_nid; scalar_t__ share_spdif; } ;
struct hda_codec {int /*<<< orphan*/  spdif_mutex; } ;
typedef  scalar_t__ hda_nid_t ;
struct TYPE_2__ {int channels; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__ const*) ; 
 scalar_t__ HDA_DIG_ANALOG_DUP ; 
 scalar_t__ HDA_DIG_EXCLUSIVE ; 
 size_t HDA_FRONT ; 
 int IEC958_AES0_NONAUDIO ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,scalar_t__,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,scalar_t__ const,unsigned int,int,unsigned int) ; 
 scalar_t__ FUNC6 (struct hda_codec*,scalar_t__,unsigned int) ; 
 struct hda_spdif_out* FUNC7 (struct hda_codec*,scalar_t__) ; 

int FUNC8(struct hda_codec *codec,
				     struct hda_multi_out *mout,
				     unsigned int stream_tag,
				     unsigned int format,
				     struct snd_pcm_substream *substream)
{
	const hda_nid_t *nids = mout->dac_nids;
	int chs = substream->runtime->channels;
	struct hda_spdif_out *spdif;
	int i;

	FUNC2(&codec->spdif_mutex);
	spdif = FUNC7(codec, mout->dig_out_nid);
	if (mout->dig_out_nid && mout->share_spdif &&
	    mout->dig_out_used != HDA_DIG_EXCLUSIVE) {
		if (chs == 2 && spdif != NULL &&
		    FUNC6(codec, mout->dig_out_nid,
						format) &&
		    !(spdif->status & IEC958_AES0_NONAUDIO)) {
			mout->dig_out_used = HDA_DIG_ANALOG_DUP;
			FUNC4(codec, mout->dig_out_nid,
					     stream_tag, format);
		} else {
			mout->dig_out_used = 0;
			FUNC1(codec, mout->dig_out_nid);
		}
	}
	FUNC3(&codec->spdif_mutex);

	/* front */
	FUNC5(codec, nids[HDA_FRONT], stream_tag,
				   0, format);
	if (!mout->no_share_stream &&
	    mout->hp_nid && mout->hp_nid != nids[HDA_FRONT])
		/* headphone out will just decode front left/right (stereo) */
		FUNC5(codec, mout->hp_nid, stream_tag,
					   0, format);
	/* extra outputs copied from front */
	for (i = 0; i < FUNC0(mout->hp_out_nid); i++)
		if (!mout->no_share_stream && mout->hp_out_nid[i])
			FUNC5(codec,
						   mout->hp_out_nid[i],
						   stream_tag, 0, format);

	/* surrounds */
	for (i = 1; i < mout->num_dacs; i++) {
		if (chs >= (i + 1) * 2) /* independent out */
			FUNC5(codec, nids[i], stream_tag,
						   i * 2, format);
		else if (!mout->no_share_stream) /* copy front */
			FUNC5(codec, nids[i], stream_tag,
						   0, format);
	}

	/* extra surrounds */
	for (i = 0; i < FUNC0(mout->extra_out_nid); i++) {
		int ch = 0;
		if (!mout->extra_out_nid[i])
			break;
		if (chs >= (i + 1) * 2)
			ch = i * 2;
		else if (!mout->no_share_stream)
			break;
		FUNC5(codec, mout->extra_out_nid[i],
					   stream_tag, ch, format);
	}

	return 0;
}