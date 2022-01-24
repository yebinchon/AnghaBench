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
struct wm8400_priv {struct wm8400* wm8400; } ;
struct wm8400 {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int WM8400_CODEC_ENA ; 
 int WM8400_IPVU ; 
 int /*<<< orphan*/  WM8400_LEFT_LINE_INPUT_1_2_VOLUME ; 
 int /*<<< orphan*/  WM8400_LEFT_OUTPUT_VOLUME ; 
 int /*<<< orphan*/  WM8400_POWER_MANAGEMENT_1 ; 
 int /*<<< orphan*/  WM8400_RIGHT_LINE_INPUT_1_2_VOLUME ; 
 int /*<<< orphan*/  WM8400_RIGHT_OUTPUT_VOLUME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct wm8400* FUNC2 (int /*<<< orphan*/ ) ; 
 struct wm8400_priv* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * power ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,struct wm8400_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC10(struct snd_soc_component *component)
{
	struct wm8400 *wm8400 = FUNC2(component->dev);
	struct wm8400_priv *priv;
	int ret;
	u16 reg;

	priv = FUNC3(component->dev, sizeof(struct wm8400_priv),
			    GFP_KERNEL);
	if (priv == NULL)
		return -ENOMEM;

	FUNC5(component, wm8400->regmap);
	FUNC7(component, priv);
	priv->wm8400 = wm8400;

	ret = FUNC4(wm8400->dev,
				 FUNC0(power), &power[0]);
	if (ret != 0) {
		FUNC1(component->dev, "Failed to get regulators: %d\n", ret);
		return ret;
	}

	FUNC9(component);

	reg = FUNC6(component, WM8400_POWER_MANAGEMENT_1);
	FUNC8(component, WM8400_POWER_MANAGEMENT_1, reg | WM8400_CODEC_ENA);

	/* Latch volume update bits */
	reg = FUNC6(component, WM8400_LEFT_LINE_INPUT_1_2_VOLUME);
	FUNC8(component, WM8400_LEFT_LINE_INPUT_1_2_VOLUME,
		     reg & WM8400_IPVU);
	reg = FUNC6(component, WM8400_RIGHT_LINE_INPUT_1_2_VOLUME);
	FUNC8(component, WM8400_RIGHT_LINE_INPUT_1_2_VOLUME,
		     reg & WM8400_IPVU);

	FUNC8(component, WM8400_LEFT_OUTPUT_VOLUME, 0x50 | (1<<8));
	FUNC8(component, WM8400_RIGHT_OUTPUT_VOLUME, 0x50 | (1<<8));

	return 0;
}