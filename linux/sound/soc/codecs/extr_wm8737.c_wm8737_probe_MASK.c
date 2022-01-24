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
struct wm8737_priv {int /*<<< orphan*/  supplies; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SND_SOC_BIAS_STANDBY ; 
 int /*<<< orphan*/  WM8737_LEFT_PGA_VOLUME ; 
 int /*<<< orphan*/  WM8737_LVU ; 
 int /*<<< orphan*/  WM8737_RIGHT_PGA_VOLUME ; 
 int /*<<< orphan*/  WM8737_RVU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 struct wm8737_priv* FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_component *component)
{
	struct wm8737_priv *wm8737 = FUNC5(component);
	int ret;

	ret = FUNC3(FUNC0(wm8737->supplies),
				    wm8737->supplies);
	if (ret != 0) {
		FUNC1(component->dev, "Failed to enable supplies: %d\n", ret);
		goto err_get;
	}

	ret = FUNC7(component);
	if (ret < 0) {
		FUNC1(component->dev, "Failed to issue reset\n");
		goto err_enable;
	}

	FUNC6(component, WM8737_LEFT_PGA_VOLUME, WM8737_LVU,
			    WM8737_LVU);
	FUNC6(component, WM8737_RIGHT_PGA_VOLUME, WM8737_RVU,
			    WM8737_RVU);

	FUNC4(component, SND_SOC_BIAS_STANDBY);

	/* Bias level configuration will have done an extra enable */
	FUNC2(FUNC0(wm8737->supplies), wm8737->supplies);

	return 0;

err_enable:
	FUNC2(FUNC0(wm8737->supplies), wm8737->supplies);
err_get:
	return ret;
}