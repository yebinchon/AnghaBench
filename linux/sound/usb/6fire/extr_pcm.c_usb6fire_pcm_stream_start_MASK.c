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
struct usb_iso_packet_descriptor {int offset; int length; scalar_t__ status; scalar_t__ actual_length; } ;
struct pcm_runtime {scalar_t__ stream_state; int stream_wait_cond; int in_packet_size; int /*<<< orphan*/  stream_wait_queue; TYPE_1__* in_urbs; } ;
struct TYPE_2__ {int /*<<< orphan*/  instance; struct usb_iso_packet_descriptor* packets; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HZ ; 
 int PCM_N_PACKETS_PER_URB ; 
 int PCM_N_URBS ; 
 scalar_t__ STREAM_DISABLED ; 
 scalar_t__ STREAM_RUNNING ; 
 scalar_t__ STREAM_STARTING ; 
 int /*<<< orphan*/  FUNC0 (struct pcm_runtime*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pcm_runtime *rt)
{
	int ret;
	int i;
	int k;
	struct usb_iso_packet_descriptor *packet;

	if (rt->stream_state == STREAM_DISABLED) {
		/* submit our in urbs */
		rt->stream_wait_cond = false;
		rt->stream_state = STREAM_STARTING;
		for (i = 0; i < PCM_N_URBS; i++) {
			for (k = 0; k < PCM_N_PACKETS_PER_URB; k++) {
				packet = &rt->in_urbs[i].packets[k];
				packet->offset = k * rt->in_packet_size;
				packet->length = rt->in_packet_size;
				packet->actual_length = 0;
				packet->status = 0;
			}
			ret = FUNC1(&rt->in_urbs[i].instance,
					GFP_ATOMIC);
			if (ret) {
				FUNC0(rt);
				return ret;
			}
		}

		/* wait for first out urb to return (sent in in urb handler) */
		FUNC2(rt->stream_wait_queue, rt->stream_wait_cond,
				HZ);
		if (rt->stream_wait_cond)
			rt->stream_state = STREAM_RUNNING;
		else {
			FUNC0(rt);
			return -EIO;
		}
	}
	return 0;
}