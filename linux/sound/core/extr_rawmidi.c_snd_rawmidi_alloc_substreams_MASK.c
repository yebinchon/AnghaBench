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
struct snd_rawmidi_substream {int stream; int number; int /*<<< orphan*/  list; struct snd_rawmidi_str* pstr; struct snd_rawmidi* rmidi; } ;
struct snd_rawmidi_str {int /*<<< orphan*/  substream_count; int /*<<< orphan*/  substreams; } ;
struct snd_rawmidi {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct snd_rawmidi_substream* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct snd_rawmidi *rmidi,
					struct snd_rawmidi_str *stream,
					int direction,
					int count)
{
	struct snd_rawmidi_substream *substream;
	int idx;

	for (idx = 0; idx < count; idx++) {
		substream = FUNC0(sizeof(*substream), GFP_KERNEL);
		if (!substream)
			return -ENOMEM;
		substream->stream = direction;
		substream->number = idx;
		substream->rmidi = rmidi;
		substream->pstr = stream;
		FUNC1(&substream->list, &stream->substreams);
		stream->substream_count++;
	}
	return 0;
}