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
struct fw_scs1x {int input_escape_count; } ;
typedef  int /*<<< orphan*/  eox ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_rawmidi_substream*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_rawmidi_substream*,int const*,int) ; 
 int* sysex_escape_prefix ; 

__attribute__((used)) static void FUNC3(struct fw_scs1x *scs,
			    struct snd_rawmidi_substream *stream, u8 byte)
{
	const u8 eox = 0xf7;

	if (scs->input_escape_count > 0) {
		FUNC1(stream, byte);
		scs->input_escape_count--;
		if (scs->input_escape_count == 0)
			FUNC2(stream, &eox, sizeof(eox));
	} else if (byte == 0xf9) {
		FUNC2(stream, sysex_escape_prefix,
				    FUNC0(sysex_escape_prefix));
		FUNC1(stream, 0x00);
		FUNC1(stream, 0xf9);
		scs->input_escape_count = 3;
	} else {
		FUNC2(stream, &byte, 1);
	}
}