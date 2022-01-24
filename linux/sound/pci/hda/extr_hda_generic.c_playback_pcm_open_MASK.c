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
struct hda_pcm_stream {int dummy; } ;
struct hda_gen_spec {int active_streams; int /*<<< orphan*/  pcm_mutex; int /*<<< orphan*/  multiout; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_GEN_PCM_ACT_OPEN ; 
 int STREAM_MULTI_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct hda_pcm_stream*,struct hda_codec*,struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct hda_codec*,int /*<<< orphan*/ *,struct snd_pcm_substream*,struct hda_pcm_stream*) ; 

__attribute__((used)) static int FUNC4(struct hda_pcm_stream *hinfo,
			     struct hda_codec *codec,
			     struct snd_pcm_substream *substream)
{
	struct hda_gen_spec *spec = codec->spec;
	int err;

	FUNC1(&spec->pcm_mutex);
	err = FUNC3(codec,
					    &spec->multiout, substream,
					     hinfo);
	if (!err) {
		spec->active_streams |= 1 << STREAM_MULTI_OUT;
		FUNC0(hinfo, codec, substream,
				       HDA_GEN_PCM_ACT_OPEN);
	}
	FUNC2(&spec->pcm_mutex);
	return err;
}