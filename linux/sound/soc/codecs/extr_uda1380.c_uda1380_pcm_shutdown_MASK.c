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
typedef  int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;

/* Variables and functions */
 int R00_DAC_CLK ; 
 int R00_EN_ADC ; 
 int R00_EN_DAC ; 
 int R00_EN_DEC ; 
 int R00_EN_INT ; 
 int R02_PON_PLL ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  UDA1380_CLK ; 
 int /*<<< orphan*/  UDA1380_PM ; 
 int FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct snd_pcm_substream *substream,
				 struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	u16 clk = FUNC0(component, UDA1380_CLK);

	/* shut down WSPLL power if running from this clock */
	if (clk & R00_DAC_CLK) {
		u16 pm = FUNC0(component, UDA1380_PM);
		FUNC1(component, UDA1380_PM, ~R02_PON_PLL & pm);
	}

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		clk &= ~(R00_EN_DAC | R00_EN_INT);
	else
		clk &= ~(R00_EN_ADC | R00_EN_DEC);

	FUNC1(component, UDA1380_CLK, clk);
}