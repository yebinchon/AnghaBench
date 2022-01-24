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
struct timer_list {int dummy; } ;
struct snd_sb {int /*<<< orphan*/  open_lock; int /*<<< orphan*/  midi_timer; struct snd_rawmidi_substream* midi_substream_output; } ;
struct snd_rawmidi_substream {int dummy; } ;

/* Variables and functions */
 struct snd_sb* chip ; 
 struct snd_sb* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  midi_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_rawmidi_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct snd_sb *chip = FUNC0(chip, t, midi_timer);
	struct snd_rawmidi_substream *substream = chip->midi_substream_output;
	unsigned long flags;

	FUNC3(&chip->open_lock, flags);
	FUNC1(&chip->midi_timer, 1 + jiffies);
	FUNC4(&chip->open_lock, flags);	
	FUNC2(substream);
}