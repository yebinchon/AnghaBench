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
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  SUN8I_ADDA_PAEN_HP_CTRL ; 
 int /*<<< orphan*/  SUN8I_ADDA_PAEN_HP_CTRL_HPPAEN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 struct snd_soc_component* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dapm_widget *w,
				     struct snd_kcontrol *k, int event)
{
	struct snd_soc_component *component = FUNC5(w->dapm);

	if (FUNC2(event)) {
		FUNC4(component, SUN8I_ADDA_PAEN_HP_CTRL,
					      FUNC0(SUN8I_ADDA_PAEN_HP_CTRL_HPPAEN),
					      FUNC0(SUN8I_ADDA_PAEN_HP_CTRL_HPPAEN));
		/*
		 * Need a delay to have the amplifier up. 700ms seems the best
		 * compromise between the time to let the amplifier up and the
		 * time not to feel this delay while playing a sound.
		 */
		FUNC3(700);
	} else if (FUNC1(event)) {
		FUNC4(component, SUN8I_ADDA_PAEN_HP_CTRL,
					      FUNC0(SUN8I_ADDA_PAEN_HP_CTRL_HPPAEN),
					      0x0);
	}

	return 0;
}