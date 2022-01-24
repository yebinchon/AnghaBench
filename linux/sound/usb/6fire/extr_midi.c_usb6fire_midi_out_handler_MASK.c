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
struct urb {int transfer_buffer_length; TYPE_1__* dev; struct midi_runtime* context; } ;
struct midi_runtime {int* out_buffer; int /*<<< orphan*/  out_lock; int /*<<< orphan*/ * out; int /*<<< orphan*/  out_serial; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MIDI_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct urb *urb)
{
	struct midi_runtime *rt = urb->context;
	int ret;
	unsigned long flags;

	FUNC2(&rt->out_lock, flags);

	if (rt->out) {
		ret = FUNC1(rt->out, rt->out_buffer + 4,
				MIDI_BUFSIZE - 4);
		if (ret > 0) { /* more data available, send next packet */
			rt->out_buffer[1] = ret + 2;
			rt->out_buffer[3] = rt->out_serial++;
			urb->transfer_buffer_length = ret + 4;

			ret = FUNC4(urb, GFP_ATOMIC);
			if (ret < 0)
				FUNC0(&urb->dev->dev,
					"midi out urb submit failed: %d\n",
					ret);
		} else /* no more data to transmit */
			rt->out = NULL;
	}
	FUNC3(&rt->out_lock, flags);
}