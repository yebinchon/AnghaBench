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
struct wm_hubs_data {int /*<<< orphan*/  hp_startup_mode; } ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
#define  SND_SOC_DAPM_PRE_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  WM8993_ANALOGUE_HP_0 ; 
 int /*<<< orphan*/  WM8993_CHARGE_PUMP_1 ; 
 int WM8993_CP_ENA ; 
 int WM8993_HPOUT1L_DLY ; 
 int WM8993_HPOUT1L_ENA ; 
 int WM8993_HPOUT1R_DLY ; 
 int WM8993_HPOUT1R_ENA ; 
 int /*<<< orphan*/  WM8993_POWER_MANAGEMENT_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct wm_hubs_data* FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 struct snd_soc_component* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
			   struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC3(w->dapm);
	struct wm_hubs_data *hubs = FUNC1(component);

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		switch (hubs->hp_startup_mode) {
		case 0:
			break;
		case 1:
			/* Enable the headphone amp */
			FUNC2(component, WM8993_POWER_MANAGEMENT_1,
					    WM8993_HPOUT1L_ENA |
					    WM8993_HPOUT1R_ENA,
					    WM8993_HPOUT1L_ENA |
					    WM8993_HPOUT1R_ENA);

			/* Enable the second stage */
			FUNC2(component, WM8993_ANALOGUE_HP_0,
					    WM8993_HPOUT1L_DLY |
					    WM8993_HPOUT1R_DLY,
					    WM8993_HPOUT1L_DLY |
					    WM8993_HPOUT1R_DLY);
			break;
		default:
			FUNC0(component->dev, "Unknown HP startup mode %d\n",
				hubs->hp_startup_mode);
			break;
		}
		break;

	case SND_SOC_DAPM_PRE_PMD:
		FUNC2(component, WM8993_CHARGE_PUMP_1,
				    WM8993_CP_ENA, 0);
		break;
	}

	return 0;
}