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
struct snd_pcm {int /*<<< orphan*/  private_free; } ;
struct snd_card {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SNDRV_PCM_STREAM_CAPTURE ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_pcm* pxa2xx_ac97_pcm ; 
 int /*<<< orphan*/  pxa2xx_ac97_pcm_ops ; 
 int /*<<< orphan*/  pxa2xx_pcm_free_dma_buffers ; 
 int FUNC2 (struct snd_pcm*,int) ; 
 int FUNC3 (struct snd_card*,char*,int /*<<< orphan*/ ,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_card *card)
{
	struct snd_pcm *pcm;
	int stream, ret;

	ret = FUNC3(card, "PXA2xx-PCM", 0, 1, 1, &pcm);
	if (ret)
		goto out;

	pcm->private_free = pxa2xx_pcm_free_dma_buffers;

	ret = FUNC1(card->dev, FUNC0(32));
	if (ret)
		goto out;

	stream = SNDRV_PCM_STREAM_PLAYBACK;
	FUNC4(pcm, stream, &pxa2xx_ac97_pcm_ops);
	ret = FUNC2(pcm, stream);
	if (ret)
		goto out;

	stream = SNDRV_PCM_STREAM_CAPTURE;
	FUNC4(pcm, stream, &pxa2xx_ac97_pcm_ops);
	ret = FUNC2(pcm, stream);
	if (ret)
		goto out;

	pxa2xx_ac97_pcm = pcm;
	ret = 0;

 out:
	return ret;
}