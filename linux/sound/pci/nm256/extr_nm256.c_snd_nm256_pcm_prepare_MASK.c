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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  periods; int /*<<< orphan*/  period_size; int /*<<< orphan*/  buffer_size; struct nm256_stream* private_data; } ;
struct nm256_stream {scalar_t__ running; scalar_t__ cur_period; int /*<<< orphan*/  periods; void* period_size; void* dma_size; } ;
struct nm256 {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int ENXIO ; 
 void* FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nm256*,struct nm256_stream*,struct snd_pcm_substream*) ; 
 struct nm256* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct nm256 *chip = FUNC3(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct nm256_stream *s = runtime->private_data;

	if (FUNC1(!s))
		return -ENXIO;
	s->dma_size = FUNC0(runtime, substream->runtime->buffer_size);
	s->period_size = FUNC0(runtime, substream->runtime->period_size);
	s->periods = substream->runtime->periods;
	s->cur_period = 0;

	FUNC4(&chip->reg_lock);
	s->running = 0;
	FUNC2(chip, s, substream);
	FUNC5(&chip->reg_lock);

	return 0;
}