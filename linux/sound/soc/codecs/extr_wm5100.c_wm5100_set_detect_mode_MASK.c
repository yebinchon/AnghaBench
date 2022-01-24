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
struct TYPE_2__ {int /*<<< orphan*/  hp_pol; struct wm5100_jack_mode* jack_modes; } ;
struct wm5100_priv {int jack_mode; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; TYPE_1__ pdata; } ;
struct wm5100_jack_mode {int bias; int micd_src; int /*<<< orphan*/  hp_pol; } ;

/* Variables and functions */
 int FUNC0 (struct wm5100_jack_mode*) ; 
 scalar_t__ FUNC1 (int) ; 
 int WM5100_ACCDET_BIAS_SRC_MASK ; 
 int WM5100_ACCDET_BIAS_SRC_SHIFT ; 
 int WM5100_ACCDET_SRC ; 
 int WM5100_ACCDET_SRC_SHIFT ; 
 int /*<<< orphan*/  WM5100_ACCESSORY_DETECT_MODE_1 ; 
 int WM5100_HPCOM_SRC ; 
 int WM5100_HPCOM_SRC_SHIFT ; 
 int /*<<< orphan*/  WM5100_MISC_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC5(struct wm5100_priv *wm5100, int the_mode)
{
	struct wm5100_jack_mode *mode = &wm5100->pdata.jack_modes[the_mode];

	if (FUNC1(the_mode >= FUNC0(wm5100->pdata.jack_modes)))
		return;

	FUNC3(wm5100->pdata.hp_pol, mode->hp_pol);
	FUNC4(wm5100->regmap, WM5100_ACCESSORY_DETECT_MODE_1,
			   WM5100_ACCDET_BIAS_SRC_MASK |
			   WM5100_ACCDET_SRC,
			   (mode->bias << WM5100_ACCDET_BIAS_SRC_SHIFT) |
			   mode->micd_src << WM5100_ACCDET_SRC_SHIFT);
	FUNC4(wm5100->regmap, WM5100_MISC_CONTROL,
			   WM5100_HPCOM_SRC,
			   mode->micd_src << WM5100_HPCOM_SRC_SHIFT);

	wm5100->jack_mode = the_mode;

	FUNC2(wm5100->dev, "Set microphone polarity to %d\n",
		wm5100->jack_mode);
}