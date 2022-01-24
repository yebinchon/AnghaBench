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
struct TYPE_3__ {int fdf; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;
struct amdtp_stream {int sfc; unsigned int syt_interval; TYPE_2__ ctx_data; struct amdtp_dot* protocol; } ;
struct amdtp_dot {unsigned int pcm_channels; unsigned int midi_fifo_limit; } ;

/* Variables and functions */
 int AMDTP_FDF_AM824 ; 
 int EBUSY ; 
 unsigned int MIDI_BYTES_PER_SECOND ; 
 scalar_t__ FUNC0 (struct amdtp_stream*) ; 
 int FUNC1 (struct amdtp_stream*,unsigned int,unsigned int) ; 

int FUNC2(struct amdtp_stream *s, unsigned int rate,
			     unsigned int pcm_channels)
{
	struct amdtp_dot *p = s->protocol;
	int err;

	if (FUNC0(s))
		return -EBUSY;

	/*
	 * A first data channel is for MIDI messages, the rest is Multi Bit
	 * Linear Audio data channel.
	 */
	err = FUNC1(s, rate, pcm_channels + 1);
	if (err < 0)
		return err;

	s->ctx_data.rx.fdf = AMDTP_FDF_AM824 | s->sfc;

	p->pcm_channels = pcm_channels;

	/*
	 * We do not know the actual MIDI FIFO size of most devices.  Just
	 * assume two bytes, i.e., one byte can be received over the bus while
	 * the previous one is transmitted over MIDI.
	 * (The value here is adjusted for midi_ratelimit_per_packet().)
	 */
	p->midi_fifo_limit = rate - MIDI_BYTES_PER_SECOND * s->syt_interval + 1;

	return 0;
}