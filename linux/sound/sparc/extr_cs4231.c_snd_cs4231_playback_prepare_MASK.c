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
struct snd_pcm_runtime {int period_size; } ;
struct snd_cs4231 {int* image; int /*<<< orphan*/  lock; scalar_t__ p_periods_sent; } ;

/* Variables and functions */
 size_t CS4231_IFACE_CTRL ; 
 int CS4231_PLAYBACK_ENABLE ; 
 int CS4231_PLAYBACK_PIO ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 struct snd_cs4231* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_cs4231 *chip = FUNC1(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned long flags;
	int ret = 0;

	FUNC2(&chip->lock, flags);

	chip->image[CS4231_IFACE_CTRL] &= ~(CS4231_PLAYBACK_ENABLE |
					    CS4231_PLAYBACK_PIO);

	if (FUNC0(runtime->period_size > 0xffff + 1)) {
		ret = -EINVAL;
		goto out;
	}

	chip->p_periods_sent = 0;

out:
	FUNC3(&chip->lock, flags);

	return ret;
}