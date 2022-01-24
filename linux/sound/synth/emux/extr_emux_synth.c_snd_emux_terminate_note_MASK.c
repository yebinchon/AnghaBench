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
struct snd_midi_channel {int dummy; } ;
struct snd_emux_port {struct snd_emux* emu; } ;
struct TYPE_2__ {int /*<<< orphan*/  terminate; } ;
struct snd_emux {TYPE_1__ ops; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emux*,int,struct snd_midi_channel*,int) ; 

void
FUNC2(void *p, int note, struct snd_midi_channel *chan)
{
	struct snd_emux *emu;
	struct snd_emux_port *port;

	port = p;
	if (FUNC0(!port || !chan))
		return;

	emu = port->emu;
	if (FUNC0(!emu || !emu->ops.terminate))
		return;

	FUNC1(emu, note, chan, 1);
}