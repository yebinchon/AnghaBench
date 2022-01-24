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
struct wm2200_priv {int symmetric_rates; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int WM2200_AIF1TX_LRCLK_SRC ; 
 int /*<<< orphan*/  WM2200_AUDIO_IF_1_2 ; 
 int WM2200_GP1_FN_MASK ; 
 int /*<<< orphan*/  WM2200_GPIO_CTRL_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct wm2200_priv* FUNC1 (struct snd_soc_component*) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct wm2200_priv *wm2200 = FUNC1(component);
	unsigned int val = 0;
	int ret;

	ret = FUNC2(component, WM2200_GPIO_CTRL_1);
	if (ret >= 0) {
		if ((ret & WM2200_GP1_FN_MASK) != 0) {
			wm2200->symmetric_rates = true;
			val = WM2200_AIF1TX_LRCLK_SRC;
		}
	} else {
		FUNC0(component->dev, "Failed to read GPIO 1 config: %d\n", ret);
	}

	FUNC3(component, WM2200_AUDIO_IF_1_2,
			    WM2200_AIF1TX_LRCLK_SRC, val);

	return 0;
}