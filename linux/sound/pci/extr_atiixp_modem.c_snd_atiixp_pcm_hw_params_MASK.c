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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct atiixp_modem {int /*<<< orphan*/ * ac97; } ;
struct atiixp_dma {int /*<<< orphan*/  buf_bytes; int /*<<< orphan*/  buf_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_addr; struct atiixp_dma* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_LINE1_LEVEL ; 
 int /*<<< orphan*/  AC97_LINE1_RATE ; 
 int NUM_ATI_CODECS ; 
 int FUNC0 (struct atiixp_modem*,struct atiixp_dma*,struct snd_pcm_substream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct atiixp_modem* FUNC7 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
				   struct snd_pcm_hw_params *hw_params)
{
	struct atiixp_modem *chip = FUNC7(substream);
	struct atiixp_dma *dma = substream->runtime->private_data;
	int err;
	int i;

	err = FUNC6(substream, FUNC1(hw_params));
	if (err < 0)
		return err;
	dma->buf_addr = substream->runtime->dma_addr;
	dma->buf_bytes = FUNC1(hw_params);

	err = FUNC0(chip, dma, substream,
				       FUNC3(hw_params),
				       FUNC2(hw_params));
	if (err < 0)
		return err;

	/* set up modem rate */
	for (i = 0; i < NUM_ATI_CODECS; i++) {
		if (! chip->ac97[i])
			continue;
		FUNC5(chip->ac97[i], AC97_LINE1_RATE, FUNC4(hw_params));
		FUNC5(chip->ac97[i], AC97_LINE1_LEVEL, 0);
	}

	return err;
}