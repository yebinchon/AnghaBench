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
struct fw_scs1x {int dummy; } ;
typedef  int /*<<< orphan*/  eox ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int const HSS1394_TAG_USER_DATA ; 
 int /*<<< orphan*/  FUNC1 (struct fw_scs1x*,struct snd_rawmidi_substream*,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_rawmidi_substream*,int const) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_rawmidi_substream*,int const*,int) ; 
 int const* sysex_escape_prefix ; 

__attribute__((used)) static void FUNC4(struct fw_scs1x *scs,
			      struct snd_rawmidi_substream *stream,
			      const u8 *data, unsigned int bytes)
{
	unsigned int i;
	const u8 eox = 0xf7;

	if (data[0] == HSS1394_TAG_USER_DATA) {
		for (i = 1; i < bytes; ++i)
			FUNC1(scs, stream, data[i]);
	} else {
		FUNC3(stream, sysex_escape_prefix,
				    FUNC0(sysex_escape_prefix));
		for (i = 0; i < bytes; ++i)
			FUNC2(stream, data[i]);
		FUNC3(stream, &eox, sizeof(eox));
	}
}