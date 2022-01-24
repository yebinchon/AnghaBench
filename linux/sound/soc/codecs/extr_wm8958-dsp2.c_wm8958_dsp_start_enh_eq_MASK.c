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
struct wm8994_priv {size_t enh_eq_cfg; int /*<<< orphan*/  enh_eq; struct wm8994* wm8994; } ;
struct TYPE_2__ {struct wm8958_enh_eq_cfg* enh_eq_cfgs; scalar_t__ num_enh_eq_cfgs; } ;
struct wm8994 {TYPE_1__ pdata; } ;
struct wm8958_enh_eq_cfg {int /*<<< orphan*/ * regs; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WM8958_DSP2_CONFIG ; 
 int WM8958_DSP2_ENA ; 
 int WM8958_DSP2_EXECCONTROL ; 
 int /*<<< orphan*/  WM8958_DSP2_PROGRAM ; 
 int /*<<< orphan*/  WM8958_DSP2_RUNR ; 
 int WM8958_MBC_ENA ; 
 int WM8958_MBC_SEL_MASK ; 
 int WM8958_MBC_SEL_SHIFT ; 
 struct wm8994_priv* FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct snd_soc_component *component, int path)
{
	struct wm8994_priv *wm8994 = FUNC1(component);
	struct wm8994 *control = wm8994->wm8994;
	int i;

	FUNC4(component, "ENH_EQ", wm8994->enh_eq, false);

	FUNC2(component, WM8958_DSP2_PROGRAM,
			    WM8958_DSP2_ENA, WM8958_DSP2_ENA);

	/* If we've got user supplied settings use them */
	if (control->pdata.num_enh_eq_cfgs) {
		struct wm8958_enh_eq_cfg *cfg
			= &control->pdata.enh_eq_cfgs[wm8994->enh_eq_cfg];

		for (i = 0; i < FUNC0(cfg->regs); i++)
			FUNC3(component, i + 0x2200,
				      cfg->regs[i]);
	}

	/* Run the DSP */
	FUNC3(component, WM8958_DSP2_EXECCONTROL,
		      WM8958_DSP2_RUNR);

	/* Switch the DSP into the data path */
	FUNC2(component, WM8958_DSP2_CONFIG,
			    WM8958_MBC_SEL_MASK | WM8958_MBC_ENA,
			    path << WM8958_MBC_SEL_SHIFT | WM8958_MBC_ENA);
}