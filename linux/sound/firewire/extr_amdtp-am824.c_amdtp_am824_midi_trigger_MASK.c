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
struct amdtp_stream {struct amdtp_am824* protocol; } ;
struct amdtp_am824 {unsigned int midi_ports; int /*<<< orphan*/ * midi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct snd_rawmidi_substream*) ; 

void FUNC1(struct amdtp_stream *s, unsigned int port,
			      struct snd_rawmidi_substream *midi)
{
	struct amdtp_am824 *p = s->protocol;

	if (port < p->midi_ports)
		FUNC0(p->midi[port], midi);
}