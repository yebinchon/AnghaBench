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
struct snd_compr_stream {int /*<<< orphan*/  error_work; TYPE_1__* runtime; } ;
typedef  scalar_t__ snd_pcm_state_t ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

int FUNC2(struct snd_compr_stream *stream,
			 snd_pcm_state_t state)
{
	if (stream->runtime->state == state)
		return 0;

	stream->runtime->state = state;

	FUNC0("Changing state to: %d\n", state);

	FUNC1(system_power_efficient_wq, &stream->error_work, 0);

	return 0;
}