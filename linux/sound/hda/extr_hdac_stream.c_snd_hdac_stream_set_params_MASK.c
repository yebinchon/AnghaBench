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
struct snd_pcm_runtime {scalar_t__ no_period_wakeup; } ;
struct hdac_stream {unsigned int bufsize; unsigned int period_bytes; unsigned int format_val; scalar_t__ no_period_wakeup; struct snd_pcm_substream* substream; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct hdac_stream*) ; 
 unsigned int FUNC1 (struct snd_pcm_substream*) ; 
 unsigned int FUNC2 (struct snd_pcm_substream*) ; 

int FUNC3(struct hdac_stream *azx_dev,
				 unsigned int format_val)
{

	unsigned int bufsize, period_bytes;
	struct snd_pcm_substream *substream = azx_dev->substream;
	struct snd_pcm_runtime *runtime;
	int err;

	if (!substream)
		return -EINVAL;
	runtime = substream->runtime;
	bufsize = FUNC1(substream);
	period_bytes = FUNC2(substream);

	if (bufsize != azx_dev->bufsize ||
	    period_bytes != azx_dev->period_bytes ||
	    format_val != azx_dev->format_val ||
	    runtime->no_period_wakeup != azx_dev->no_period_wakeup) {
		azx_dev->bufsize = bufsize;
		azx_dev->period_bytes = period_bytes;
		azx_dev->format_val = format_val;
		azx_dev->no_period_wakeup = runtime->no_period_wakeup;
		err = FUNC0(azx_dev);
		if (err < 0)
			return err;
	}
	return 0;
}