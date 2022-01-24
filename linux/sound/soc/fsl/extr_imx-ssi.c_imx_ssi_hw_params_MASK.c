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
typedef  int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct imx_ssi {int flags; int base; } ;

/* Variables and functions */
 int IMX_SSI_SYN ; 
#define  SNDRV_PCM_FORMAT_S16_LE 130 
#define  SNDRV_PCM_FORMAT_S20_3LE 129 
#define  SNDRV_PCM_FORMAT_S24_LE 128 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int SSI_SRCCR ; 
 int FUNC0 (int) ; 
 int SSI_STCCR ; 
 int SSI_STCCR_WL_MASK ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (int) ; 
 struct imx_ssi* FUNC3 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
			     struct snd_pcm_hw_params *params,
			     struct snd_soc_dai *cpu_dai)
{
	struct imx_ssi *ssi = FUNC3(cpu_dai);
	u32 reg, sccr;

	/* Tx/Rx config */
	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		reg = SSI_STCCR;
	else
		reg = SSI_SRCCR;

	if (ssi->flags & IMX_SSI_SYN)
		reg = SSI_STCCR;

	sccr = FUNC2(ssi->base + reg) & ~SSI_STCCR_WL_MASK;

	/* DAI data (word) size */
	switch (FUNC1(params)) {
	case SNDRV_PCM_FORMAT_S16_LE:
		sccr |= FUNC0(16);
		break;
	case SNDRV_PCM_FORMAT_S20_3LE:
		sccr |= FUNC0(20);
		break;
	case SNDRV_PCM_FORMAT_S24_LE:
		sccr |= FUNC0(24);
		break;
	}

	FUNC4(sccr, ssi->base + reg);

	return 0;
}