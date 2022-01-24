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
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SND_SOC_DAPM_POST_PMU 129 
#define  SND_SOC_DAPM_PRE_PMD 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  WM8962_ANALOGUE_HP_0 ; 
 int WM8962_DCS_STARTUP_DONE_HP1L ; 
 int WM8962_DCS_STARTUP_DONE_HP1R ; 
 int /*<<< orphan*/  WM8962_DC_SERVO_1 ; 
 int /*<<< orphan*/  WM8962_DC_SERVO_6 ; 
 int WM8962_HP1L_DCS_ENA ; 
 int WM8962_HP1L_DCS_STARTUP ; 
 int WM8962_HP1L_ENA ; 
 int WM8962_HP1L_ENA_DLY ; 
 int WM8962_HP1L_ENA_OUTP ; 
 int WM8962_HP1L_RMV_SHORT ; 
 int WM8962_HP1R_DCS_ENA ; 
 int WM8962_HP1R_DCS_STARTUP ; 
 int WM8962_HP1R_ENA ; 
 int WM8962_HP1R_ENA_DLY ; 
 int WM8962_HP1R_ENA_OUTP ; 
 int WM8962_HP1R_RMV_SHORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 struct snd_soc_component* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_dapm_widget *w,
		    struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC6(w->dapm);
	int timeout;
	int reg;
	int expected = (WM8962_DCS_STARTUP_DONE_HP1L |
			WM8962_DCS_STARTUP_DONE_HP1R);

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		FUNC5(component, WM8962_ANALOGUE_HP_0,
				    WM8962_HP1L_ENA | WM8962_HP1R_ENA,
				    WM8962_HP1L_ENA | WM8962_HP1R_ENA);
		FUNC7(20);

		FUNC5(component, WM8962_ANALOGUE_HP_0,
				    WM8962_HP1L_ENA_DLY | WM8962_HP1R_ENA_DLY,
				    WM8962_HP1L_ENA_DLY | WM8962_HP1R_ENA_DLY);

		/* Start the DC servo */
		FUNC5(component, WM8962_DC_SERVO_1,
				    WM8962_HP1L_DCS_ENA | WM8962_HP1R_DCS_ENA |
				    WM8962_HP1L_DCS_STARTUP |
				    WM8962_HP1R_DCS_STARTUP,
				    WM8962_HP1L_DCS_ENA | WM8962_HP1R_DCS_ENA |
				    WM8962_HP1L_DCS_STARTUP |
				    WM8962_HP1R_DCS_STARTUP);

		/* Wait for it to complete, should be well under 100ms */
		timeout = 0;
		do {
			FUNC3(1);
			reg = FUNC4(component, WM8962_DC_SERVO_6);
			if (reg < 0) {
				FUNC2(component->dev,
					"Failed to read DCS status: %d\n",
					reg);
				continue;
			}
			FUNC1(component->dev, "DCS status: %x\n", reg);
		} while (++timeout < 200 && (reg & expected) != expected);

		if ((reg & expected) != expected)
			FUNC2(component->dev, "DC servo timed out\n");
		else
			FUNC1(component->dev, "DC servo complete after %dms\n",
				timeout);

		FUNC5(component, WM8962_ANALOGUE_HP_0,
				    WM8962_HP1L_ENA_OUTP |
				    WM8962_HP1R_ENA_OUTP,
				    WM8962_HP1L_ENA_OUTP |
				    WM8962_HP1R_ENA_OUTP);
		FUNC7(20);

		FUNC5(component, WM8962_ANALOGUE_HP_0,
				    WM8962_HP1L_RMV_SHORT |
				    WM8962_HP1R_RMV_SHORT,
				    WM8962_HP1L_RMV_SHORT |
				    WM8962_HP1R_RMV_SHORT);
		break;

	case SND_SOC_DAPM_PRE_PMD:
		FUNC5(component, WM8962_ANALOGUE_HP_0,
				    WM8962_HP1L_RMV_SHORT |
				    WM8962_HP1R_RMV_SHORT, 0);

		FUNC7(20);

		FUNC5(component, WM8962_DC_SERVO_1,
				    WM8962_HP1L_DCS_ENA | WM8962_HP1R_DCS_ENA |
				    WM8962_HP1L_DCS_STARTUP |
				    WM8962_HP1R_DCS_STARTUP,
				    0);

		FUNC5(component, WM8962_ANALOGUE_HP_0,
				    WM8962_HP1L_ENA | WM8962_HP1R_ENA |
				    WM8962_HP1L_ENA_DLY | WM8962_HP1R_ENA_DLY |
				    WM8962_HP1L_ENA_OUTP |
				    WM8962_HP1R_ENA_OUTP, 0);
				    
		break;

	default:
		FUNC0(1, "Invalid event %d\n", event);
		return -EINVAL;
	
	}

	return 0;
}