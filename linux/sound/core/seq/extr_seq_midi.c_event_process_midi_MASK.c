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
struct snd_seq_event {scalar_t__ type; int flags; } ;
struct snd_rawmidi_substream {int dummy; } ;
struct TYPE_2__ {struct snd_rawmidi_substream* output; } ;
struct seq_midisynth {int /*<<< orphan*/ * parser; TYPE_1__ output_rfile; } ;
typedef  int /*<<< orphan*/  snd_seq_dump_func_t ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int SNDRV_SEQ_EVENT_LENGTH_MASK ; 
 int SNDRV_SEQ_EVENT_LENGTH_VARIABLE ; 
 scalar_t__ SNDRV_SEQ_EVENT_SYSEX ; 
 scalar_t__ FUNC0 (struct snd_rawmidi_substream*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,int,struct snd_seq_event*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_seq_event*,int /*<<< orphan*/ ,struct snd_rawmidi_substream*) ; 

__attribute__((used)) static int FUNC6(struct snd_seq_event *ev, int direct,
			      void *private_data, int atomic, int hop)
{
	struct seq_midisynth *msynth = private_data;
	unsigned char msg[10];	/* buffer for constructing midi messages */
	struct snd_rawmidi_substream *substream;
	int len;

	if (FUNC2(!msynth))
		return -EINVAL;
	substream = msynth->output_rfile.output;
	if (substream == NULL)
		return -ENODEV;
	if (ev->type == SNDRV_SEQ_EVENT_SYSEX) {	/* special case, to save space */
		if ((ev->flags & SNDRV_SEQ_EVENT_LENGTH_MASK) != SNDRV_SEQ_EVENT_LENGTH_VARIABLE) {
			/* invalid event */
			FUNC1("ALSA: seq_midi: invalid sysex event flags = 0x%x\n", ev->flags);
			return 0;
		}
		FUNC5(ev, (snd_seq_dump_func_t)dump_midi, substream);
		FUNC4(msynth->parser);
	} else {
		if (msynth->parser == NULL)
			return -EIO;
		len = FUNC3(msynth->parser, msg, sizeof(msg), ev);
		if (len < 0)
			return 0;
		if (FUNC0(substream, msg, len) < 0)
			FUNC4(msynth->parser);
	}
	return 0;
}