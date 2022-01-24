#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct wm8985_priv {TYPE_1__* supplies; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int WM8985_BIASCUT ; 
 TYPE_1__ WM8985_BIAS_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,size_t,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (size_t,TYPE_1__*) ; 
 int FUNC4 (size_t,TYPE_1__*) ; 
 struct wm8985_priv* FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,TYPE_1__,int,int) ; 
 TYPE_1__* volume_update_regs ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*) ; 
 int FUNC8 (struct snd_soc_component*) ; 
 int /*<<< orphan*/ * wm8985_supply_names ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *component)
{
	size_t i;
	struct wm8985_priv *wm8985;
	int ret;

	wm8985 = FUNC5(component);

	for (i = 0; i < FUNC0(wm8985->supplies); i++)
		wm8985->supplies[i].supply = wm8985_supply_names[i];

	ret = FUNC2(component->dev, FUNC0(wm8985->supplies),
				 wm8985->supplies);
	if (ret) {
		FUNC1(component->dev, "Failed to request supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC4(FUNC0(wm8985->supplies),
				    wm8985->supplies);
	if (ret) {
		FUNC1(component->dev, "Failed to enable supplies: %d\n", ret);
		return ret;
	}

	ret = FUNC8(component);
	if (ret < 0) {
		FUNC1(component->dev, "Failed to issue reset: %d\n", ret);
		goto err_reg_enable;
	}

	/* latch volume update bits */
	for (i = 0; i < FUNC0(volume_update_regs); ++i)
		FUNC6(component, volume_update_regs[i],
				    0x100, 0x100);
	/* enable BIASCUT */
	FUNC6(component, WM8985_BIAS_CTRL, WM8985_BIASCUT,
			    WM8985_BIASCUT);

	FUNC7(component);

	return 0;

err_reg_enable:
	FUNC3(FUNC0(wm8985->supplies), wm8985->supplies);
	return ret;
}