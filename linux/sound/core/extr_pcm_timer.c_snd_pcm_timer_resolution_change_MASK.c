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
struct snd_pcm_substream {int /*<<< orphan*/  pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned long rate; unsigned long period_size; int timer_resolution; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(struct snd_pcm_substream *substream)
{
	unsigned long rate, mult, fsize, l, post;
	struct snd_pcm_runtime *runtime = substream->runtime;

	mult = 1000000000;
	rate = runtime->rate;
	if (FUNC2(!rate))
		return;
	l = FUNC0(mult, rate);
	mult /= l;
	rate /= l;
	fsize = runtime->period_size;
	if (FUNC2(!fsize))
		return;
	l = FUNC0(rate, fsize);
	rate /= l;
	fsize /= l;
	post = 1;
	while ((mult * fsize) / fsize != mult) {
		mult /= 2;
		post *= 2;
	}
	if (rate == 0) {
		FUNC1(substream->pcm,
			"pcm timer resolution out of range (rate = %u, period_size = %lu)\n",
			runtime->rate, runtime->period_size);
		runtime->timer_resolution = -1;
		return;
	}
	runtime->timer_resolution = (mult * fsize / rate) * post;
}