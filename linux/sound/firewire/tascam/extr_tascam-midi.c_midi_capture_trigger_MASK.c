#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_tscm {int /*<<< orphan*/  lock; struct snd_rawmidi_substream** tx_midi_substreams; } ;
struct snd_rawmidi_substream {size_t number; TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_tscm* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct snd_rawmidi_substream *substrm, int up)
{
	struct snd_tscm *tscm = substrm->rmidi->private_data;
	unsigned long flags;

	FUNC0(&tscm->lock, flags);

	if (up)
		tscm->tx_midi_substreams[substrm->number] = substrm;
	else
		tscm->tx_midi_substreams[substrm->number] = NULL;

	FUNC1(&tscm->lock, flags);
}