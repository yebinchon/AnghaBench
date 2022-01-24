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
struct wm8994_priv {int dsp_active; scalar_t__* mbc_ena; scalar_t__* hpf2_ena; scalar_t__* hpf1_ena; scalar_t__* vss_ena; scalar_t__* enh_eq_ena; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int WM8958_DSP2CLK_ENA ; 
 int WM8958_DSP2CLK_SRC ; 
 int WM8958_DSP2CLK_SRC_SHIFT ; 
 int /*<<< orphan*/  WM8958_DSP2_CONFIG ; 
 int WM8958_DSP2_ENA ; 
 int /*<<< orphan*/  WM8958_DSP2_EXECCONTROL ; 
 int /*<<< orphan*/  WM8958_DSP2_PROGRAM ; 
 int /*<<< orphan*/  WM8958_DSP2_STOP ; 
 int WM8958_MBC_ENA ; 
 int WM8994_AIF1CLK_ENA_MASK ; 
 int WM8994_AIF1DAC1L_ENA ; 
 int WM8994_AIF1DAC1R_ENA ; 
 int WM8994_AIF1DAC2L_ENA ; 
 int WM8994_AIF1DAC2R_ENA ; 
 int /*<<< orphan*/  WM8994_AIF1_CLOCKING_1 ; 
 int WM8994_AIF2CLK_ENA_MASK ; 
 int WM8994_AIF2DACL_ENA ; 
 int WM8994_AIF2DACR_ENA ; 
 int /*<<< orphan*/  WM8994_AIF2_CLOCKING_1 ; 
 int /*<<< orphan*/  WM8994_CLOCKING_1 ; 
 int /*<<< orphan*/  WM8994_POWER_MANAGEMENT_5 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct wm8994_priv* FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,int) ; 

__attribute__((used)) static void FUNC9(struct snd_soc_component *component, int path, int start)
{
	struct wm8994_priv *wm8994 = FUNC2(component);
	int pwr_reg = FUNC3(component, WM8994_POWER_MANAGEMENT_5);
	int ena, reg, aif;

	switch (path) {
	case 0:
		pwr_reg &= (WM8994_AIF1DAC1L_ENA | WM8994_AIF1DAC1R_ENA);
		aif = 0;
		break;
	case 1:
		pwr_reg &= (WM8994_AIF1DAC2L_ENA | WM8994_AIF1DAC2R_ENA);
		aif = 0;
		break;
	case 2:
		pwr_reg &= (WM8994_AIF2DACL_ENA | WM8994_AIF2DACR_ENA);
		aif = 1;
		break;
	default:
		FUNC0(1, "Invalid path %d\n", path);
		return;
	}

	/* Do we have both an active AIF and an active algorithm? */
	ena = wm8994->mbc_ena[path] || wm8994->vss_ena[path] ||
		wm8994->hpf1_ena[path] || wm8994->hpf2_ena[path] ||
		wm8994->enh_eq_ena[path];
	if (!pwr_reg)
		ena = 0;

	reg = FUNC3(component, WM8958_DSP2_PROGRAM);

	FUNC1(component->dev, "DSP path %d %d startup: %d, power: %x, DSP: %x\n",
		path, wm8994->dsp_active, start, pwr_reg, reg);

	if (start && ena) {
		/* If the DSP is already running then noop */
		if (reg & WM8958_DSP2_ENA)
			return;

		/* If either AIFnCLK is not yet enabled postpone */
		if (!(FUNC3(component, WM8994_AIF1_CLOCKING_1)
		      & WM8994_AIF1CLK_ENA_MASK) &&
		    !(FUNC3(component, WM8994_AIF2_CLOCKING_1)
		      & WM8994_AIF2CLK_ENA_MASK))
			return;

		/* Switch the clock over to the appropriate AIF */
		FUNC4(component, WM8994_CLOCKING_1,
				    WM8958_DSP2CLK_SRC | WM8958_DSP2CLK_ENA,
				    aif << WM8958_DSP2CLK_SRC_SHIFT |
				    WM8958_DSP2CLK_ENA);

		if (wm8994->enh_eq_ena[path])
			FUNC6(component, path);
		else if (wm8994->vss_ena[path] || wm8994->hpf1_ena[path] ||
		    wm8994->hpf2_ena[path])
			FUNC8(component, path);
		else if (wm8994->mbc_ena[path])
			FUNC7(component, path);

		wm8994->dsp_active = path;

		FUNC1(component->dev, "DSP running in path %d\n", path);
	}

	if (!start && wm8994->dsp_active == path) {
		/* If the DSP is already stopped then noop */
		if (!(reg & WM8958_DSP2_ENA))
			return;

		FUNC4(component, WM8958_DSP2_CONFIG,
				    WM8958_MBC_ENA, 0);	
		FUNC5(component, WM8958_DSP2_EXECCONTROL,
			      WM8958_DSP2_STOP);
		FUNC4(component, WM8958_DSP2_PROGRAM,
				    WM8958_DSP2_ENA, 0);
		FUNC4(component, WM8994_CLOCKING_1,
				    WM8958_DSP2CLK_ENA, 0);

		wm8994->dsp_active = -1;

		FUNC1(component->dev, "DSP stopped\n");
	}
}