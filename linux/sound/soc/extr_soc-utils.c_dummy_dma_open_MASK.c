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
struct snd_soc_pcm_runtime {TYPE_1__* dai_link; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  no_pcm; } ;

/* Variables and functions */
 int /*<<< orphan*/  dummy_dma_hardware ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;

	/* BE's dont need dummy params */
	if (!rtd->dai_link->no_pcm)
		FUNC0(substream, &dummy_dma_hardware);

	return 0;
}