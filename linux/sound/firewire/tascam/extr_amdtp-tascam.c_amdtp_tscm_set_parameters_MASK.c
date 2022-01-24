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
struct amdtp_tscm {unsigned int pcm_channels; } ;
struct amdtp_stream {scalar_t__ direction; struct amdtp_tscm* protocol; } ;

/* Variables and functions */
 scalar_t__ AMDTP_IN_STREAM ; 
 int EBUSY ; 
 scalar_t__ FUNC0 (struct amdtp_stream*) ; 
 int FUNC1 (struct amdtp_stream*,unsigned int,unsigned int) ; 

int FUNC2(struct amdtp_stream *s, unsigned int rate)
{
	struct amdtp_tscm *p = s->protocol;
	unsigned int data_channels;

	if (FUNC0(s))
		return -EBUSY;

	data_channels = p->pcm_channels;

	/* Packets in in-stream have extra 2 data channels. */
	if (s->direction == AMDTP_IN_STREAM)
		data_channels += 2;

	return FUNC1(s, rate, data_channels);
}