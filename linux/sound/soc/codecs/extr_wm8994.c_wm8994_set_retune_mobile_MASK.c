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
struct wm8994_priv {int* retune_mobile_cfg; scalar_t__* dac_rates; int /*<<< orphan*/ * retune_mobile_texts; int /*<<< orphan*/  num_retune_mobile_texts; struct wm8994* wm8994; } ;
struct wm8994_pdata {int num_retune_mobile_cfgs; TYPE_1__* retune_mobile_cfgs; } ;
struct wm8994 {struct wm8994_pdata pdata; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int* regs; scalar_t__ rate; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int INT_MAX ; 
 int WM8994_AIF1DAC1_EQ_ENA ; 
 int WM8994_EQ_REGS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct wm8994_priv* FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_component*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* wm8994_retune_mobile_base ; 

__attribute__((used)) static void FUNC6(struct snd_soc_component *component, int block)
{
	struct wm8994_priv *wm8994 = FUNC2(component);
	struct wm8994 *control = wm8994->wm8994;
	struct wm8994_pdata *pdata = &control->pdata;
	int base = wm8994_retune_mobile_base[block];
	int iface, best, best_val, save, i, cfg;

	if (!pdata || !wm8994->num_retune_mobile_texts)
		return;

	switch (block) {
	case 0:
	case 1:
		iface = 0;
		break;
	case 2:
		iface = 1;
		break;
	default:
		return;
	}

	/* Find the version of the currently selected configuration
	 * with the nearest sample rate. */
	cfg = wm8994->retune_mobile_cfg[block];
	best = 0;
	best_val = INT_MAX;
	for (i = 0; i < pdata->num_retune_mobile_cfgs; i++) {
		if (FUNC5(pdata->retune_mobile_cfgs[i].name,
			   wm8994->retune_mobile_texts[cfg]) == 0 &&
		    FUNC0(pdata->retune_mobile_cfgs[i].rate
			- wm8994->dac_rates[iface]) < best_val) {
			best = i;
			best_val = FUNC0(pdata->retune_mobile_cfgs[i].rate
				       - wm8994->dac_rates[iface]);
		}
	}

	FUNC1(component->dev, "ReTune Mobile %d %s/%dHz for %dHz sample rate\n",
		block,
		pdata->retune_mobile_cfgs[best].name,
		pdata->retune_mobile_cfgs[best].rate,
		wm8994->dac_rates[iface]);

	/* The EQ will be disabled while reconfiguring it, remember the
	 * current configuration.
	 */
	save = FUNC3(component, base);
	save &= WM8994_AIF1DAC1_EQ_ENA;

	for (i = 0; i < WM8994_EQ_REGS; i++)
		FUNC4(component, base + i, 0xffff,
				pdata->retune_mobile_cfgs[best].regs[i]);

	FUNC4(component, base, WM8994_AIF1DAC1_EQ_ENA, save);
}