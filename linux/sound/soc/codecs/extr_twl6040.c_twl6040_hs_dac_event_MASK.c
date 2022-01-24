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
typedef  int /*<<< orphan*/  u8 ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  TWL6040_HSDACENA ; 
 int /*<<< orphan*/  TWL6040_REG_HSLCTL ; 
 int /*<<< orphan*/  TWL6040_REG_HSRCTL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
			struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC2(w->dapm);
	u8 hslctl, hsrctl;

	/*
	 * Workaround for Headset DC offset caused pop noise:
	 * Both HS DAC need to be turned on (before the HS driver) and off at
	 * the same time.
	 */
	hslctl = FUNC3(component, TWL6040_REG_HSLCTL);
	hsrctl = FUNC3(component, TWL6040_REG_HSRCTL);
	if (FUNC0(event)) {
		hslctl |= TWL6040_HSDACENA;
		hsrctl |= TWL6040_HSDACENA;
	} else {
		hslctl &= ~TWL6040_HSDACENA;
		hsrctl &= ~TWL6040_HSDACENA;
	}
	FUNC4(component, TWL6040_REG_HSLCTL, hslctl);
	FUNC4(component, TWL6040_REG_HSRCTL, hsrctl);

	FUNC1(1);
	return 0;
}