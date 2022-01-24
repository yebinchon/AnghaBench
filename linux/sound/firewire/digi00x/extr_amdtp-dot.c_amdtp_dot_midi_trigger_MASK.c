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
struct snd_rawmidi_substream {int dummy; } ;
struct amdtp_stream {struct amdtp_dot* protocol; } ;
struct amdtp_dot {int /*<<< orphan*/ * midi; } ;

/* Variables and functions */
 unsigned int MAX_MIDI_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct snd_rawmidi_substream*) ; 

void FUNC1(struct amdtp_stream *s, unsigned int port,
			  struct snd_rawmidi_substream *midi)
{
	struct amdtp_dot *p = s->protocol;

	if (port < MAX_MIDI_PORTS)
		FUNC0(p->midi[port], midi);
}