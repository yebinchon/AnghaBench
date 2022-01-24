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
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ addr; int /*<<< orphan*/ * area; } ;
struct snd_pcm_substream {TYPE_2__ dma_buffer; } ;
struct snd_pcm {TYPE_1__* streams; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_3__ {struct snd_pcm_substream* substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct snd_pcm*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 struct snd_soc_component* FUNC2 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_pcm *pcm)
{
	struct snd_soc_pcm_runtime *rtd = pcm->private_data;
	struct snd_soc_component *component = FUNC2(rtd, DRV_NAME);
	struct snd_pcm_substream *substream;
	int stream;

	FUNC0(component->dev, "psc_dma_free(pcm=%p)\n", pcm);

	for (stream = 0; stream < 2; stream++) {
		substream = pcm->streams[stream].substream;
		if (substream) {
			FUNC1(&substream->dma_buffer);
			substream->dma_buffer.area = NULL;
			substream->dma_buffer.addr = 0;
		}
	}
}