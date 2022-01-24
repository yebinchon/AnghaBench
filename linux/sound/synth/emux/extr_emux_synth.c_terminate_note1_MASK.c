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
struct snd_midi_channel {int dummy; } ;
struct snd_emux_voice {int key; struct snd_midi_channel* chan; int /*<<< orphan*/  state; } ;
struct snd_emux {int max_voices; int /*<<< orphan*/  voice_lock; struct snd_emux_voice* voices; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emux*,struct snd_emux_voice*,int) ; 

__attribute__((used)) static void
FUNC4(struct snd_emux *emu, int note, struct snd_midi_channel *chan, int free)
{
	int  i;
	struct snd_emux_voice *vp;
	unsigned long flags;

	FUNC1(&emu->voice_lock, flags);
	for (i = 0; i < emu->max_voices; i++) {
		vp = &emu->voices[i];
		if (FUNC0(vp->state) && vp->chan == chan &&
		    vp->key == note)
			FUNC3(emu, vp, free);
	}
	FUNC2(&emu->voice_lock, flags);
}