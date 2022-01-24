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
struct wm8994_priv {int* aifclk; scalar_t__ jackdet; int /*<<< orphan*/  jack_mic; struct wm8994* wm8994; } ;
struct TYPE_2__ {int num_micd_rates; struct wm8958_micd_rate* micd_rates; } ;
struct wm8994 {TYPE_1__ pdata; } ;
struct wm8958_micd_rate {int idle; int start; int rate; scalar_t__ sysclk; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct wm8958_micd_rate*) ; 
 int WM8958_MICD_BIAS_STARTTIME_MASK ; 
 int WM8958_MICD_BIAS_STARTTIME_SHIFT ; 
 int WM8958_MICD_RATE_MASK ; 
 int WM8958_MICD_RATE_SHIFT ; 
 int /*<<< orphan*/  WM8958_MIC_DETECT_1 ; 
 int /*<<< orphan*/  WM8994_CLOCKING_1 ; 
 int WM8994_SYSCLK_SRC ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int,char*) ; 
 struct wm8958_micd_rate* jackdet_rates ; 
 struct wm8958_micd_rate* micdet_rates ; 
 struct wm8994_priv* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC6(struct snd_soc_component *component)
{
	struct wm8994_priv *wm8994 = FUNC3(component);
	struct wm8994 *control = wm8994->wm8994;
	int best, i, sysclk, val;
	bool idle;
	const struct wm8958_micd_rate *rates;
	int num_rates;

	idle = !wm8994->jack_mic;

	sysclk = FUNC4(component, WM8994_CLOCKING_1);
	if (sysclk & WM8994_SYSCLK_SRC)
		sysclk = wm8994->aifclk[1];
	else
		sysclk = wm8994->aifclk[0];

	if (control->pdata.micd_rates) {
		rates = control->pdata.micd_rates;
		num_rates = control->pdata.num_micd_rates;
	} else if (wm8994->jackdet) {
		rates = jackdet_rates;
		num_rates = FUNC0(jackdet_rates);
	} else {
		rates = micdet_rates;
		num_rates = FUNC0(micdet_rates);
	}

	best = 0;
	for (i = 0; i < num_rates; i++) {
		if (rates[i].idle != idle)
			continue;
		if (FUNC1(rates[i].sysclk - sysclk) <
		    FUNC1(rates[best].sysclk - sysclk))
			best = i;
		else if (rates[best].idle != idle)
			best = i;
	}

	val = rates[best].start << WM8958_MICD_BIAS_STARTTIME_SHIFT
		| rates[best].rate << WM8958_MICD_RATE_SHIFT;

	FUNC2(component->dev, "MICD rate %d,%d for %dHz %s\n",
		rates[best].start, rates[best].rate, sysclk,
		idle ? "idle" : "active");

	FUNC5(component, WM8958_MIC_DETECT_1,
			    WM8958_MICD_BIAS_STARTTIME_MASK |
			    WM8958_MICD_RATE_MASK, val);
}