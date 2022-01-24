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
struct snd_soc_pcm_runtime {struct snd_pcm* pcm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm {int dummy; } ;
struct mtk_base_afe {int /*<<< orphan*/  dev; TYPE_1__* mtk_afe_hardware; } ;
struct TYPE_2__ {size_t buffer_bytes_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFE_PCM_NAME ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t) ; 
 struct mtk_base_afe* FUNC1 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC2 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 

int FUNC3(struct snd_soc_pcm_runtime *rtd)
{
	size_t size;
	struct snd_pcm *pcm = rtd->pcm;
	struct snd_soc_component *component = FUNC2(rtd, AFE_PCM_NAME);
	struct mtk_base_afe *afe = FUNC1(component);

	size = afe->mtk_afe_hardware->buffer_bytes_max;
	FUNC0(pcm, SNDRV_DMA_TYPE_DEV,
					      afe->dev, size, size);
	return 0;
}