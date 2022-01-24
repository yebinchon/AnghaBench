#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int report; struct snd_soc_jack* jack; } ;
struct TYPE_4__ {int report; struct snd_soc_jack* jack; } ;
struct wm8350_data {TYPE_1__ hpr; TYPE_2__ hpl; struct wm8350* wm8350; } ;
struct wm8350 {int dummy; } ;
struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;
typedef  enum wm8350_jack { ____Placeholder_wm8350_jack } wm8350_jack ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  WM8350_JACK_DETECT ; 
#define  WM8350_JDL 129 
 int WM8350_JDL_ENA ; 
#define  WM8350_JDR 128 
 int WM8350_JDR_ENA ; 
 int /*<<< orphan*/  WM8350_POWER_MGMT_4 ; 
 int WM8350_TOCLK_ENA ; 
 struct wm8350_data* FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct wm8350*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct wm8350_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct wm8350_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct wm8350*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct snd_soc_component *component, enum wm8350_jack which,
			  struct snd_soc_jack *jack, int report)
{
	struct wm8350_data *priv = FUNC0(component);
	struct wm8350 *wm8350 = priv->wm8350;
	int ena;

	switch (which) {
	case WM8350_JDL:
		priv->hpl.jack = jack;
		priv->hpl.report = report;
		ena = WM8350_JDL_ENA;
		break;

	case WM8350_JDR:
		priv->hpr.jack = jack;
		priv->hpr.report = report;
		ena = WM8350_JDR_ENA;
		break;

	default:
		return -EINVAL;
	}

	if (report) {
		FUNC4(wm8350, WM8350_POWER_MGMT_4, WM8350_TOCLK_ENA);
		FUNC4(wm8350, WM8350_JACK_DETECT, ena);
	} else {
		FUNC1(wm8350, WM8350_JACK_DETECT, ena);
	}

	/* Sync status */
	switch (which) {
	case WM8350_JDL:
		FUNC2(0, priv);
		break;
	case WM8350_JDR:
		FUNC3(0, priv);
		break;
	}

	return 0;
}