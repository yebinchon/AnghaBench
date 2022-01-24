#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  virtual; scalar_t__ isvirtual; } ;
struct TYPE_6__ {TYPE_1__ midi; } ;
struct TYPE_7__ {TYPE_2__ wavefront; } ;
typedef  TYPE_3__ snd_wavefront_card_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC2 (snd_wavefront_card_t *card)

{
	unsigned long flags;

	FUNC0 (&card->wavefront.midi.virtual, flags);
	// snd_wavefront_midi_input_close (card->ics2115_external_rmidi);
	// snd_wavefront_midi_output_close (card->ics2115_external_rmidi);
	card->wavefront.midi.isvirtual = 0;
	FUNC1 (&card->wavefront.midi.virtual, flags);
}