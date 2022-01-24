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
typedef  int u8 ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct rt5514_dsp {int /*<<< orphan*/  dma_lock; scalar_t__ dma_offset; struct snd_pcm_substream* substream; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  RT5514_IRQ_CTRL ; 
 int RT5514_IRQ_STATUS_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt5514_dsp*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC5 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct rt5514_dsp* FUNC6 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC7 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
			       struct snd_pcm_hw_params *hw_params)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_component *component = FUNC7(rtd, DRV_NAME);
	struct rt5514_dsp *rt5514_dsp =
		FUNC6(component);
	int ret;
	u8 buf[8];

	FUNC0(&rt5514_dsp->dma_lock);
	ret = FUNC5(substream,
			FUNC2(hw_params));
	rt5514_dsp->substream = substream;
	rt5514_dsp->dma_offset = 0;

	/* Read IRQ status and schedule copy accordingly. */
	FUNC4(RT5514_IRQ_CTRL, (u8 *)&buf, sizeof(buf));
	if (buf[0] & RT5514_IRQ_STATUS_BIT)
		FUNC3(rt5514_dsp);

	FUNC1(&rt5514_dsp->dma_lock);

	return ret;
}