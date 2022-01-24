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
typedef  int u8 ;
struct snd_rawmidi_substream {int dummy; } ;
struct snd_ff {int /*<<< orphan*/ * tx_midi_substreams; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 struct snd_rawmidi_substream* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_rawmidi_substream*,int*,int) ; 

__attribute__((used)) static void FUNC3(struct snd_ff *ff, unsigned int offset,
				  __le32 *buf, size_t length)
{
	int i;

	for (i = 0; i < length / 4; i++) {
		u8 byte = FUNC1(buf[i]) & 0xff;
		struct snd_rawmidi_substream *substream;

		substream = FUNC0(ff->tx_midi_substreams[0]);
		if (substream)
			FUNC2(substream, &byte, 1);
	}
}