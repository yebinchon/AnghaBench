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
struct wm8741_priv {int /*<<< orphan*/  supplies; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wm8741_priv* FUNC5 (struct snd_soc_component*) ; 
 int FUNC6 (struct snd_soc_component*) ; 
 int FUNC7 (struct snd_soc_component*) ; 
 int FUNC8 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *component)
{
	struct wm8741_priv *wm8741 = FUNC5(component);
	int ret = 0;

	ret = FUNC4(FUNC0(wm8741->supplies),
				    wm8741->supplies);
	if (ret != 0) {
		FUNC2(component->dev, "Failed to enable supplies: %d\n", ret);
		goto err_get;
	}

	ret = FUNC8(component);
	if (ret < 0) {
		FUNC2(component->dev, "Failed to issue reset\n");
		goto err_enable;
	}

	ret = FUNC7(component);
	if (ret < 0) {
		FUNC2(component->dev, "Failed to change default settings\n");
		goto err_enable;
	}

	ret = FUNC6(component);
	if (ret < 0) {
		FUNC2(component->dev, "Failed to add controls\n");
		goto err_enable;
	}

	FUNC1(component->dev, "Successful registration\n");
	return ret;

err_enable:
	FUNC3(FUNC0(wm8741->supplies), wm8741->supplies);
err_get:
	return ret;
}