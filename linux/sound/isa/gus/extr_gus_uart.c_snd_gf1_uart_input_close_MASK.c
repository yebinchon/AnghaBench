#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_4__ {scalar_t__ interrupt_handler_midi_out; } ;
struct snd_gus_card {int /*<<< orphan*/  uart_cmd_lock; int /*<<< orphan*/ * midi_substream_input; TYPE_2__ gf1; } ;
struct TYPE_3__ {struct snd_gus_card* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_GF1_HANDLER_MIDI_IN ; 
 scalar_t__ snd_gf1_interrupt_midi_out ; 
 int /*<<< orphan*/  FUNC0 (struct snd_gus_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_gus_card*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct snd_rawmidi_substream *substream)
{
	unsigned long flags;
	struct snd_gus_card *gus;

	gus = substream->rmidi->private_data;
	FUNC2(&gus->uart_cmd_lock, flags);
	if (gus->gf1.interrupt_handler_midi_out != snd_gf1_interrupt_midi_out)
		FUNC1(gus, 1);
	FUNC0(gus, SNDRV_GF1_HANDLER_MIDI_IN);
	gus->midi_substream_input = NULL;
	FUNC3(&gus->uart_cmd_lock, flags);
	return 0;
}