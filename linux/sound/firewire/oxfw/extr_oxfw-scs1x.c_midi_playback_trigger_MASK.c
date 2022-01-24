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
struct fw_scs1x {int output_bytes; int output_escaped; int output_idle; int error; int /*<<< orphan*/  output; int /*<<< orphan*/  work; scalar_t__ transaction_bytes; scalar_t__ output_status; } ;
struct TYPE_2__ {struct fw_scs1x* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct snd_rawmidi_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct snd_rawmidi_substream *stream, int up)
{
	struct fw_scs1x *scs = stream->rmidi->private_data;

	if (up) {
		scs->output_status = 0;
		scs->output_bytes = 1;
		scs->output_escaped = false;
		scs->output_idle = false;
		scs->transaction_bytes = 0;
		scs->error = false;

		FUNC0(scs->output, stream);
		FUNC1(&scs->work);
	} else {
		FUNC0(scs->output, NULL);
	}
}