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
struct snd_opl3 {int /*<<< orphan*/  voice_lock; } ;
struct snd_midi_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int,int,struct snd_midi_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(void *p, int note, int vel,
		       struct snd_midi_channel *chan)
{
	struct snd_opl3 *opl3 = p;
	unsigned long flags;

	FUNC1(&opl3->voice_lock, flags);
	FUNC0(p, note, vel, chan);
	FUNC2(&opl3->voice_lock, flags);
}