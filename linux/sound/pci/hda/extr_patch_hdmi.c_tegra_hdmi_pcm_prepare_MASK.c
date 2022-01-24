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
struct hda_codec {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hda_pcm_stream*,struct hda_codec*,unsigned int,unsigned int,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct hda_pcm_stream *hinfo,
				  struct hda_codec *codec,
				  unsigned int stream_tag,
				  unsigned int format,
				  struct snd_pcm_substream *substream)
{
	int err;

	err = FUNC0(hinfo, codec, stream_tag,
						format, substream);
	if (err < 0)
		return err;

	/* notify the HDMI codec of the format change */
	FUNC1(codec, format);

	return 0;
}