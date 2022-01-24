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
struct TYPE_2__ {int report; int short_report; struct snd_soc_jack* jack; } ;
struct wm8350_data {TYPE_1__ mic; struct wm8350* wm8350; } ;
struct wm8350 {int dummy; } ;
struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8350_MIC_DET_ENA ; 
 int /*<<< orphan*/  WM8350_POWER_MGMT_1 ; 
 int /*<<< orphan*/  WM8350_POWER_MGMT_4 ; 
 int /*<<< orphan*/  WM8350_TOCLK_ENA ; 
 struct wm8350_data* FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct wm8350*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wm8350*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct snd_soc_component *component,
			   struct snd_soc_jack *jack,
			   int detect_report, int short_report)
{
	struct wm8350_data *priv = FUNC0(component);
	struct wm8350 *wm8350 = priv->wm8350;

	priv->mic.jack = jack;
	priv->mic.report = detect_report;
	priv->mic.short_report = short_report;

	if (detect_report || short_report) {
		FUNC2(wm8350, WM8350_POWER_MGMT_4, WM8350_TOCLK_ENA);
		FUNC2(wm8350, WM8350_POWER_MGMT_1,
				WM8350_MIC_DET_ENA);
	} else {
		FUNC1(wm8350, WM8350_POWER_MGMT_1,
				  WM8350_MIC_DET_ENA);
	}

	return 0;
}