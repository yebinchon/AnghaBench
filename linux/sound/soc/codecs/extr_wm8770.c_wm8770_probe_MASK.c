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
struct wm8770_priv {int /*<<< orphan*/  supplies; struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM8770_DAC1RVOL ; 
 int /*<<< orphan*/  WM8770_DAC2RVOL ; 
 int /*<<< orphan*/  WM8770_DAC3RVOL ; 
 int /*<<< orphan*/  WM8770_DAC4RVOL ; 
 int /*<<< orphan*/  WM8770_DACMUTE ; 
 int /*<<< orphan*/  WM8770_MSALGVOL ; 
 int /*<<< orphan*/  WM8770_MSDIGVOL ; 
 int /*<<< orphan*/  WM8770_VOUT1RVOL ; 
 int /*<<< orphan*/  WM8770_VOUT2RVOL ; 
 int /*<<< orphan*/  WM8770_VOUT3RVOL ; 
 int /*<<< orphan*/  WM8770_VOUT4RVOL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wm8770_priv* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_component *component)
{
	struct wm8770_priv *wm8770;
	int ret;

	wm8770 = FUNC4(component);
	wm8770->component = component;

	ret = FUNC3(FUNC0(wm8770->supplies),
				    wm8770->supplies);
	if (ret) {
		FUNC1(component->dev, "Failed to enable supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC6(component);
	if (ret < 0) {
		FUNC1(component->dev, "Failed to issue reset: %d\n", ret);
		goto err_reg_enable;
	}

	/* latch the volume update bits */
	FUNC5(component, WM8770_MSDIGVOL, 0x100, 0x100);
	FUNC5(component, WM8770_MSALGVOL, 0x100, 0x100);
	FUNC5(component, WM8770_VOUT1RVOL, 0x100, 0x100);
	FUNC5(component, WM8770_VOUT2RVOL, 0x100, 0x100);
	FUNC5(component, WM8770_VOUT3RVOL, 0x100, 0x100);
	FUNC5(component, WM8770_VOUT4RVOL, 0x100, 0x100);
	FUNC5(component, WM8770_DAC1RVOL, 0x100, 0x100);
	FUNC5(component, WM8770_DAC2RVOL, 0x100, 0x100);
	FUNC5(component, WM8770_DAC3RVOL, 0x100, 0x100);
	FUNC5(component, WM8770_DAC4RVOL, 0x100, 0x100);

	/* mute all DACs */
	FUNC5(component, WM8770_DACMUTE, 0x10, 0x10);

err_reg_enable:
	FUNC2(FUNC0(wm8770->supplies), wm8770->supplies);
	return ret;
}