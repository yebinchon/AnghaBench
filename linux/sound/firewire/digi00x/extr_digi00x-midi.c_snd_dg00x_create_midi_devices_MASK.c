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
struct snd_dg00x {scalar_t__ is_console; } ;

/* Variables and functions */
 int DOT_MIDI_IN_PORTS ; 
 int DOT_MIDI_OUT_PORTS ; 
 int FUNC0 (struct snd_dg00x*,int,int,int) ; 

int FUNC1(struct snd_dg00x *dg00x)
{
	int err;

	/* Add physical midi ports. */
	err = FUNC0(dg00x, DOT_MIDI_OUT_PORTS, DOT_MIDI_IN_PORTS,
				 false);
	if (err < 0)
		return err;

	if (dg00x->is_console)
		err = FUNC0(dg00x, 1, 1, true);

	return err;
}