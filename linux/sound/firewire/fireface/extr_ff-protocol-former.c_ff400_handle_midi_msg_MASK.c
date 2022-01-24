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
typedef  int u32 ;
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
		u32 quad = FUNC1(buf[i]);
		u8 byte;
		unsigned int index;
		struct snd_rawmidi_substream *substream;

		/* Message in first port. */
		/*
		 * This value may represent the index of this unit when the same
		 * units are on the same IEEE 1394 bus. This driver doesn't use
		 * it.
		 */
		index = (quad >> 8) & 0xff;
		if (index > 0) {
			substream = FUNC0(ff->tx_midi_substreams[0]);
			if (substream != NULL) {
				byte = quad & 0xff;
				FUNC2(substream, &byte, 1);
			}
		}

		/* Message in second port. */
		index = (quad >> 24) & 0xff;
		if (index > 0) {
			substream = FUNC0(ff->tx_midi_substreams[1]);
			if (substream != NULL) {
				byte = (quad >> 16) & 0xff;
				FUNC2(substream, &byte, 1);
			}
		}
	}
}