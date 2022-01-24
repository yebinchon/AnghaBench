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
struct snd_pcm_runtime {scalar_t__ dma_area; struct gus_pcm_private* private_data; } ;
struct gus_pcm_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct gus_pcm_private*,int,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void*,unsigned int) ; 
 int FUNC2 (struct snd_pcm_substream*,int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
					    int voice, unsigned long pos,
					    void *src, unsigned long count)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct gus_pcm_private *pcmp = runtime->private_data;
	unsigned int len = count;
	int bpos;

	bpos = FUNC0(pcmp, voice, pos, len);
	if (bpos < 0)
		return pos;
	FUNC1(runtime->dma_area + bpos, src, len);
	return FUNC2(substream, bpos, len);
}