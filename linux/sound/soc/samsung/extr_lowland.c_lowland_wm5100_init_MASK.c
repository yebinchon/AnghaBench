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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  card; TYPE_1__* codec_dai; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLKOUT_RATE ; 
 int /*<<< orphan*/  MCLK1_RATE ; 
 int SND_JACK_BTN_0 ; 
 int SND_JACK_HEADSET ; 
 int SND_JACK_LINEOUT ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 int /*<<< orphan*/  WM5100_CLKSRC_MCLK1 ; 
 int /*<<< orphan*/  WM5100_CLK_OPCLK ; 
 int /*<<< orphan*/  WM5100_CLK_SYSCLK ; 
 int /*<<< orphan*/  lowland_headset ; 
 int /*<<< orphan*/  lowland_headset_pins ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_soc_component *component = rtd->codec_dai->component;
	int ret;

	ret = FUNC3(component, WM5100_CLK_SYSCLK,
				       WM5100_CLKSRC_MCLK1, MCLK1_RATE,
				       SND_SOC_CLOCK_IN);
	if (ret < 0) {
		FUNC1("Failed to set SYSCLK clock source: %d\n", ret);
		return ret;
	}

	/* Clock OPCLK, used by the other audio components. */
	ret = FUNC3(component, WM5100_CLK_OPCLK, 0,
				       CLKOUT_RATE, 0);
	if (ret < 0) {
		FUNC1("Failed to set OPCLK rate: %d\n", ret);
		return ret;
	}

	ret = FUNC2(rtd->card, "Headset", SND_JACK_LINEOUT |
				    SND_JACK_HEADSET | SND_JACK_BTN_0,
				    &lowland_headset, lowland_headset_pins,
				    FUNC0(lowland_headset_pins));
	if (ret)
		return ret;

	FUNC4(component, &lowland_headset);

	return 0;
}