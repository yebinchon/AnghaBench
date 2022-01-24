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
struct snd_pcm_runtime {scalar_t__ dma_area; int /*<<< orphan*/  format; struct gus_pcm_private* private_data; } ;
struct snd_gus_card {int dummy; } ;
struct gus_pcm_private {scalar_t__ memory; struct snd_gus_card* gus; } ;

/* Variables and functions */
 int FUNC0 (struct snd_pcm_substream*,unsigned int,scalar_t__,unsigned int) ; 
 int FUNC1 (struct snd_gus_card*,scalar_t__,scalar_t__,unsigned int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
			     unsigned int bpos, unsigned int len)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct gus_pcm_private *pcmp = runtime->private_data;
	struct snd_gus_card *gus = pcmp->gus;
	int w16, invert;

	if (len > 32)
		return FUNC0(substream, bpos,
						pcmp->memory + bpos, len);

	w16 = (FUNC3(runtime->format) == 16);
	invert = FUNC2(runtime->format);
	return FUNC1(gus, runtime->dma_area + bpos,
				      pcmp->memory + bpos, len, w16, invert);
}