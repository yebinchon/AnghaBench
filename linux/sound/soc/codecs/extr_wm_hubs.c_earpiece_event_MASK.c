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
typedef  int u16 ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  WM8993_ANTIPOP1 ; 
 int WM8993_HPOUT2_IN_ENA ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_component* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
			  struct snd_kcontrol *control, int event)
{
	struct snd_soc_component *component = FUNC3(w->dapm);
	u16 reg = FUNC1(component, WM8993_ANTIPOP1) & ~WM8993_HPOUT2_IN_ENA;

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		reg |= WM8993_HPOUT2_IN_ENA;
		FUNC2(component, WM8993_ANTIPOP1, reg);
		FUNC4(50);
		break;

	case SND_SOC_DAPM_POST_PMD:
		FUNC2(component, WM8993_ANTIPOP1, reg);
		break;

	default:
		FUNC0(1, "Invalid event %d\n", event);
		break;
	}

	return 0;
}