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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct amdtp_stream {unsigned int pcm_buffer_pointer; scalar_t__ pcm_period_pointer; int /*<<< orphan*/  period_tasklet; } ;
struct TYPE_2__ {unsigned int buffer_size; scalar_t__ period_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct amdtp_stream *s,
				struct snd_pcm_substream *pcm,
				unsigned int frames)
{
	unsigned int ptr;

	ptr = s->pcm_buffer_pointer + frames;
	if (ptr >= pcm->runtime->buffer_size)
		ptr -= pcm->runtime->buffer_size;
	FUNC0(s->pcm_buffer_pointer, ptr);

	s->pcm_period_pointer += frames;
	if (s->pcm_period_pointer >= pcm->runtime->period_size) {
		s->pcm_period_pointer -= pcm->runtime->period_size;
		FUNC1(&s->period_tasklet);
	}
}