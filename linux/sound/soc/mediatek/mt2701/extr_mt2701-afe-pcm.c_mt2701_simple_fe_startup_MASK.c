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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;
struct mtk_base_afe_memif {scalar_t__ substream; } ;
struct mtk_base_afe {int /*<<< orphan*/  dev; struct mtk_base_afe_memif* memif; } ;

/* Variables and functions */
 int EBUSY ; 
 size_t MT2701_MEMIF_DLM ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct snd_pcm_substream*,struct snd_soc_dai*) ; 
 struct mtk_base_afe* FUNC2 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
				    struct snd_soc_dai *dai)
{
	struct mtk_base_afe *afe = FUNC2(dai);
	struct mtk_base_afe_memif *memif_tmp;
	int stream_dir = substream->stream;

	/* can't run single DL & DLM at the same time */
	if (stream_dir == SNDRV_PCM_STREAM_PLAYBACK) {
		memif_tmp = &afe->memif[MT2701_MEMIF_DLM];
		if (memif_tmp->substream) {
			FUNC0(afe->dev, "memif is not available");
			return -EBUSY;
		}
	}

	return FUNC1(substream, dai);
}