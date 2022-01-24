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
struct snd_info_buffer {int dummy; } ;

/* Variables and functions */
 unsigned int AC_SUPPCM_RATES ; 
 int FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC2(struct snd_info_buffer *buffer, unsigned int pcm)
{
	static unsigned int rates[] = {
		8000, 11025, 16000, 22050, 32000, 44100, 48000, 88200,
		96000, 176400, 192000, 384000
	};
	int i;

	pcm &= AC_SUPPCM_RATES;
	FUNC1(buffer, "    rates [0x%x]:", pcm);
	for (i = 0; i < FUNC0(rates); i++)
		if (pcm & (1 << i))
			FUNC1(buffer,  " %d", rates[i]);
	FUNC1(buffer, "\n");
}