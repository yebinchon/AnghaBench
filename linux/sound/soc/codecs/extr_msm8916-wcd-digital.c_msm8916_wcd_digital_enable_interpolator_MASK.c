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
struct snd_soc_dapm_widget {size_t shift; int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
#define  SND_SOC_DAPM_POST_PMU 128 
 int /*<<< orphan*/ * rx_gain_reg ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(
						struct snd_soc_dapm_widget *w,
						struct snd_kcontrol *kcontrol,
						int event)
{
	struct snd_soc_component *component = FUNC2(w->dapm);

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		/* apply the digital gain after the interpolator is enabled */
		FUNC3(10000, 10100);
		FUNC1(component, rx_gain_reg[w->shift],
			      FUNC0(component, rx_gain_reg[w->shift]));
		break;
	}
	return 0;
}