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
struct wm8753_priv {scalar_t__ dai_func; int /*<<< orphan*/  charge_work; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM8753_LADC ; 
 int /*<<< orphan*/  WM8753_LDAC ; 
 int /*<<< orphan*/  WM8753_LINVOL ; 
 int /*<<< orphan*/  WM8753_LOUT1V ; 
 int /*<<< orphan*/  WM8753_LOUT2V ; 
 int /*<<< orphan*/  WM8753_RADC ; 
 int /*<<< orphan*/  WM8753_RDAC ; 
 int /*<<< orphan*/  WM8753_RINVOL ; 
 int /*<<< orphan*/  WM8753_ROUT1V ; 
 int /*<<< orphan*/  WM8753_ROUT2V ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct wm8753_priv* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  wm8753_charge_work ; 
 int FUNC4 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component)
{
	struct wm8753_priv *wm8753 = FUNC2(component);
	int ret;

	FUNC0(&wm8753->charge_work, wm8753_charge_work);

	ret = FUNC4(component);
	if (ret < 0) {
		FUNC1(component->dev, "Failed to issue reset: %d\n", ret);
		return ret;
	}

	wm8753->dai_func = 0;

	/* set the update bits */
	FUNC3(component, WM8753_LDAC, 0x0100, 0x0100);
	FUNC3(component, WM8753_RDAC, 0x0100, 0x0100);
	FUNC3(component, WM8753_LADC, 0x0100, 0x0100);
	FUNC3(component, WM8753_RADC, 0x0100, 0x0100);
	FUNC3(component, WM8753_LOUT1V, 0x0100, 0x0100);
	FUNC3(component, WM8753_ROUT1V, 0x0100, 0x0100);
	FUNC3(component, WM8753_LOUT2V, 0x0100, 0x0100);
	FUNC3(component, WM8753_ROUT2V, 0x0100, 0x0100);
	FUNC3(component, WM8753_LINVOL, 0x0100, 0x0100);
	FUNC3(component, WM8753_RINVOL, 0x0100, 0x0100);

	return 0;
}