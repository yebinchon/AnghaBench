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
struct hda_gen_spec {scalar_t__ cur_adc; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_GEN_PCM_ACT_CLEANUP ; 
 int /*<<< orphan*/  FUNC0 (struct hda_pcm_stream*,struct hda_codec*,struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct hda_pcm_stream *hinfo,
				       struct hda_codec *codec,
				       struct snd_pcm_substream *substream)
{
	struct hda_gen_spec *spec = codec->spec;
	FUNC1(codec, spec->cur_adc);
	spec->cur_adc = 0;
	FUNC0(hinfo, codec, substream, HDA_GEN_PCM_ACT_CLEANUP);
	return 0;
}