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
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct emu10k1x_midi {int /*<<< orphan*/  rx_enable; struct emu10k1x* emu; } ;
struct emu10k1x {int dummy; } ;
struct TYPE_2__ {struct emu10k1x_midi* private_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct emu10k1x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct emu10k1x*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_rawmidi_substream *substream, int up)
{
	struct emu10k1x *emu;
	struct emu10k1x_midi *midi = substream->rmidi->private_data;
	emu = midi->emu;
	if (FUNC0(!emu))
		return;

	if (up)
		FUNC2(emu, midi->rx_enable);
	else
		FUNC1(emu, midi->rx_enable);
}