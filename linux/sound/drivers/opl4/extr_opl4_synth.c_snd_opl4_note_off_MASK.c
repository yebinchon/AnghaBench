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
struct snd_opl4 {int dummy; } ;
struct snd_midi_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_opl4*,int,struct snd_midi_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_opl4_voice_off ; 

void FUNC1(void *private_data, int note, int vel, struct snd_midi_channel *chan)
{
	struct snd_opl4 *opl4 = private_data;

	FUNC0(opl4, note, chan, snd_opl4_voice_off);
}