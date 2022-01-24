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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int silence_size; int boundary; scalar_t__ silence_start; scalar_t__ silence_filled; scalar_t__ buffer_size; scalar_t__ silence_threshold; TYPE_2__* status; TYPE_1__* control; } ;
typedef  scalar_t__ snd_pcm_uframes_t ;
typedef  scalar_t__ snd_pcm_sframes_t ;
struct TYPE_4__ {int hw_ptr; } ;
struct TYPE_3__ {int /*<<< orphan*/  appl_ptr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ULONG_MAX ; 
 int FUNC1 (struct snd_pcm_substream*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct snd_pcm_runtime*) ; 

void FUNC4(struct snd_pcm_substream *substream, snd_pcm_uframes_t new_hw_ptr)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	snd_pcm_uframes_t frames, ofs, transfer;
	int err;

	if (runtime->silence_size < runtime->boundary) {
		snd_pcm_sframes_t noise_dist, n;
		snd_pcm_uframes_t appl_ptr = FUNC0(runtime->control->appl_ptr);
		if (runtime->silence_start != appl_ptr) {
			n = appl_ptr - runtime->silence_start;
			if (n < 0)
				n += runtime->boundary;
			if ((snd_pcm_uframes_t)n < runtime->silence_filled)
				runtime->silence_filled -= n;
			else
				runtime->silence_filled = 0;
			runtime->silence_start = appl_ptr;
		}
		if (runtime->silence_filled >= runtime->buffer_size)
			return;
		noise_dist = FUNC3(runtime) + runtime->silence_filled;
		if (noise_dist >= (snd_pcm_sframes_t) runtime->silence_threshold)
			return;
		frames = runtime->silence_threshold - noise_dist;
		if (frames > runtime->silence_size)
			frames = runtime->silence_size;
	} else {
		if (new_hw_ptr == ULONG_MAX) {	/* initialization */
			snd_pcm_sframes_t avail = FUNC3(runtime);
			if (avail > runtime->buffer_size)
				avail = runtime->buffer_size;
			runtime->silence_filled = avail > 0 ? avail : 0;
			runtime->silence_start = (runtime->status->hw_ptr +
						  runtime->silence_filled) %
						 runtime->boundary;
		} else {
			ofs = runtime->status->hw_ptr;
			frames = new_hw_ptr - ofs;
			if ((snd_pcm_sframes_t)frames < 0)
				frames += runtime->boundary;
			runtime->silence_filled -= frames;
			if ((snd_pcm_sframes_t)runtime->silence_filled < 0) {
				runtime->silence_filled = 0;
				runtime->silence_start = new_hw_ptr;
			} else {
				runtime->silence_start = ofs;
			}
		}
		frames = runtime->buffer_size - runtime->silence_filled;
	}
	if (FUNC2(frames > runtime->buffer_size))
		return;
	if (frames == 0)
		return;
	ofs = runtime->silence_start % runtime->buffer_size;
	while (frames > 0) {
		transfer = ofs + frames > runtime->buffer_size ? runtime->buffer_size - ofs : frames;
		err = FUNC1(substream, ofs, transfer);
		FUNC2(err < 0);
		runtime->silence_filled += transfer;
		frames -= transfer;
		ofs = 0;
	}
}