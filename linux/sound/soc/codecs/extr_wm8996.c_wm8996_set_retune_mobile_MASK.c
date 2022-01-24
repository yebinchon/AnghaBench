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
struct wm8996_pdata {int num_retune_mobile_cfgs; TYPE_1__* retune_mobile_cfgs; } ;
struct wm8996_priv {int* retune_mobile_cfg; scalar_t__* rx_rate; int /*<<< orphan*/ * retune_mobile_texts; int /*<<< orphan*/  num_retune_mobile_texts; struct wm8996_pdata pdata; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int* regs; scalar_t__ rate; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int INT_MAX ; 
 int WM8996_DSP1RX_EQ_ENA ; 
 int WM8996_DSP1RX_SRC ; 
 int WM8996_DSP1_RX_EQ_GAINS_1 ; 
 int WM8996_DSP1_RX_EQ_GAINS_2 ; 
 int WM8996_DSP2RX_SRC ; 
 int WM8996_POWER_MANAGEMENT_8 ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct wm8996_priv* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct snd_soc_component *component, int block)
{
	struct wm8996_priv *wm8996 = FUNC3(component);
	struct wm8996_pdata *pdata = &wm8996->pdata;
	int base, best, best_val, save, i, cfg, iface;

	if (!wm8996->num_retune_mobile_texts)
		return;

	switch (block) {
	case 0:
		base = WM8996_DSP1_RX_EQ_GAINS_1;
		if (FUNC4(component, WM8996_POWER_MANAGEMENT_8) &
		    WM8996_DSP1RX_SRC)
			iface = 1;
		else
			iface = 0;
		break;
	case 1:
		base = WM8996_DSP1_RX_EQ_GAINS_2;
		if (FUNC4(component, WM8996_POWER_MANAGEMENT_8) &
		    WM8996_DSP2RX_SRC)
			iface = 1;
		else
			iface = 0;
		break;
	default:
		return;
	}

	/* Find the version of the currently selected configuration
	 * with the nearest sample rate. */
	cfg = wm8996->retune_mobile_cfg[block];
	best = 0;
	best_val = INT_MAX;
	for (i = 0; i < pdata->num_retune_mobile_cfgs; i++) {
		if (FUNC6(pdata->retune_mobile_cfgs[i].name,
			   wm8996->retune_mobile_texts[cfg]) == 0 &&
		    FUNC1(pdata->retune_mobile_cfgs[i].rate
			- wm8996->rx_rate[iface]) < best_val) {
			best = i;
			best_val = FUNC1(pdata->retune_mobile_cfgs[i].rate
				       - wm8996->rx_rate[iface]);
		}
	}

	FUNC2(component->dev, "ReTune Mobile %d %s/%dHz for %dHz sample rate\n",
		block,
		pdata->retune_mobile_cfgs[best].name,
		pdata->retune_mobile_cfgs[best].rate,
		wm8996->rx_rate[iface]);

	/* The EQ will be disabled while reconfiguring it, remember the
	 * current configuration. 
	 */
	save = FUNC4(component, base);
	save &= WM8996_DSP1RX_EQ_ENA;

	for (i = 0; i < FUNC0(pdata->retune_mobile_cfgs[best].regs); i++)
		FUNC5(component, base + i, 0xffff,
				    pdata->retune_mobile_cfgs[best].regs[i]);

	FUNC5(component, base, WM8996_DSP1RX_EQ_ENA, save);
}